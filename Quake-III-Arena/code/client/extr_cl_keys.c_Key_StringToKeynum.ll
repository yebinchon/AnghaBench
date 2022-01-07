; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Key_StringToKeynum.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Key_StringToKeynum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@keynames = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Key_StringToKeynum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %119

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %119

25:                                               ; preds = %15
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %96

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 120
  br i1 %36, label %37, label %96

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %49, 57
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 48
  store i32 %53, i32* %5, align 4
  br label %66

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 97
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 102
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 97
  %63 = add nsw i32 %62, 10
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %57, %54
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 57
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, 48
  store i32 %78, i32* %6, align 4
  br label %91

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 97
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 102
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 97
  %88 = add nsw i32 %87, 10
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %82, %79
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, 16
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %2, align 4
  br label %119

96:                                               ; preds = %37, %31, %25
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keynames, align 8
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %4, align 8
  br label %98

98:                                               ; preds = %115, %96
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i8*, i8** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @Q_stricmp(i8* %104, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 1
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** %4, align 8
  br label %98

118:                                              ; preds = %98
  store i32 -1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %110, %91, %20, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
