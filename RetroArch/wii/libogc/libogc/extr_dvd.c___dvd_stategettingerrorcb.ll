; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stategettingerrorcb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stategettingerrorcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@__dvd_executing = common dso_local global %struct.TYPE_4__* null, align 8
@_diReg = common dso_local global i32* null, align 8
@DVD_STATUS_COVER_OPENED = common dso_local global i64 0, align 8
@DVD_STATUS_DISK_CHANGE = common dso_local global i64 0, align 8
@DVD_STATUS_NO_DISK = common dso_local global i64 0, align 8
@__dvd_lasterror = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@__dvd_extensionsenabled = common dso_local global i32 0, align 4
@__dvd_stateretrycb = common dso_local global i32 0, align 4
@DVD_ERROR_UNRECOVERABLE_READ = common dso_local global i64 0, align 8
@__dvd_unrecoverederrorcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_stategettingerrorcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_stategettingerrorcb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = call i32 (...) @__dvd_statetimeout()
  br label %147

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  %19 = call i32 @__dvd_stateerror(i32 19088743)
  br label %147

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %147

23:                                               ; preds = %20
  %24 = load i32*, i32** @_diReg, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @__dvd_categorizeerror(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @__dvd_stateerror(i32 %34)
  br label %147

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  store i32 0, i32* %5, align 4
  br label %65

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @DVD_STATUS(i32 %44)
  %46 = load i64, i64* @DVD_STATUS_COVER_OPENED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 4, i32* %5, align 4
  br label %64

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @DVD_STATUS(i32 %50)
  %52 = load i64, i64* @DVD_STATUS_DISK_CHANGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 6, i32* %5, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @DVD_STATUS(i32 %56)
  %58 = load i64, i64* @DVD_STATUS_NO_DISK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 3, i32* %5, align 4
  br label %62

61:                                               ; preds = %55
  store i32 5, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @__dvd_checkcancel(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %147

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @dvd_may_retry(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  store i64 0, i64* @__dvd_lasterror, align 8
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* @__dvd_extensionsenabled, align 4
  %85 = load i32, i32* @__dvd_stateretrycb, align 4
  %86 = call i32 @DVD_LowSpinUpDrive(i32 %85)
  br label %147

87:                                               ; preds = %78
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %89 = call i32 @__dvd_statebusy(%struct.TYPE_4__* %88)
  br label %94

90:                                               ; preds = %74
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @__dvd_storeerror(i32 %91)
  %93 = call i32 (...) @__dvd_stategotoretry()
  br label %94

94:                                               ; preds = %90, %87
  br label %147

95:                                               ; preds = %71
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @DVD_ERROR(i32 %99)
  %101 = load i64, i64* @DVD_ERROR_UNRECOVERABLE_READ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @__dvd_unrecoverederrorcb, align 4
  %108 = call i32 @DVD_LowSeek(i32 %106, i32 %107)
  br label %147

109:                                              ; preds = %98
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %111 = call i32 @__dvd_laststate(%struct.TYPE_4__* %110)
  br label %147

112:                                              ; preds = %95
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @DVD_STATUS(i32 %113)
  %115 = load i64, i64* @DVD_STATUS_COVER_OPENED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 5, i32* %119, align 4
  %120 = call i32 (...) @__dvd_statemotorstopped()
  br label %147

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = call i64 @DVD_STATUS(i32 %122)
  %124 = load i64, i64* @DVD_STATUS_DISK_CHANGE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 3, i32* %128, align 4
  %129 = call i32 (...) @__dvd_statecoverclosed()
  br label %147

130:                                              ; preds = %121
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @DVD_STATUS(i32 %131)
  %133 = load i64, i64* @DVD_STATUS_NO_DISK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 4, i32* %137, align 4
  %138 = call i32 (...) @__dvd_statemotorstopped()
  br label %147

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__dvd_executing, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 -1, i32* %145, align 4
  %146 = call i32 @__dvd_stateerror(i32 19088743)
  br label %147

147:                                              ; preds = %8, %16, %31, %70, %83, %94, %103, %109, %117, %126, %135, %143, %20
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @__dvd_stateerror(i32) #1

declare dso_local i32 @__dvd_categorizeerror(i32) #1

declare dso_local i64 @DVD_STATUS(i32) #1

declare dso_local i64 @__dvd_checkcancel(i32) #1

declare dso_local i64 @dvd_may_retry(i32) #1

declare dso_local i32 @DVD_LowSpinUpDrive(i32) #1

declare dso_local i32 @__dvd_statebusy(%struct.TYPE_4__*) #1

declare dso_local i32 @__dvd_storeerror(i32) #1

declare dso_local i32 @__dvd_stategotoretry(...) #1

declare dso_local i64 @DVD_ERROR(i32) #1

declare dso_local i32 @DVD_LowSeek(i32, i32) #1

declare dso_local i32 @__dvd_laststate(%struct.TYPE_4__*) #1

declare dso_local i32 @__dvd_statemotorstopped(...) #1

declare dso_local i32 @__dvd_statecoverclosed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
