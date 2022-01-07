; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_kr.h_iso2022_kr_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_kr.h_iso2022_kr_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@state1 = common dso_local global i64 0, align 8
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@STATE2_NONE = common dso_local global i64 0, align 8
@state2 = common dso_local global i64 0, align 8
@COMBINE_STATE = common dso_local global i32 0, align 4
@STATE2_DESIGNATED_KSC5601 = common dso_local global i64 0, align 8
@STATE_TWOBYTE = common dso_local global i64 0, align 8
@ESC = common dso_local global i8 0, align 1
@SO = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32)* @iso2022_kr_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_kr_wctomb(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* @SPLIT_STATE, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ascii_wctomb(%struct.TYPE_5__* %19, i8* %20, i32 %21, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @RET_ILUNI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  %37 = load i64, i64* @state1, align 8
  %38 = load i64, i64* @STATE_ASCII, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 2
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %46, i32* %5, align 4
  br label %163

47:                                               ; preds = %36
  %48 = load i64, i64* @state1, align 8
  %49 = load i64, i64* @STATE_ASCII, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8, i8* @SI, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %7, align 8
  %57 = load i64, i64* @STATE_ASCII, align 8
  store i64 %57, i64* @state1, align 8
  br label %58

58:                                               ; preds = %51, %47
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %58
  %69 = load i64, i64* @STATE2_NONE, align 8
  store i64 %69, i64* @state2, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* @COMBINE_STATE, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %163

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76, %4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ksc5601_wctomb(%struct.TYPE_5__* %78, i8* %79, i32 %80, i32 2)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @RET_ILUNI, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %161

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (...) @abort() #3
  unreachable

90:                                               ; preds = %85
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %93, 128
  br i1 %94, label %95, label %160

95:                                               ; preds = %90
  %96 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp slt i32 %98, 128
  br i1 %99, label %100, label %160

100:                                              ; preds = %95
  %101 = load i64, i64* @state2, align 8
  %102 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 0, i32 4
  %106 = load i64, i64* @state1, align 8
  %107 = load i64, i64* @STATE_TWOBYTE, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 1
  %111 = add nsw i32 %105, %110
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %117, i32* %5, align 4
  br label %163

118:                                              ; preds = %100
  %119 = load i64, i64* @state2, align 8
  %120 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load i8, i8* @ESC, align 1
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %125, align 1
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 36, i8* %127, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8 41, i8* %129, align 1
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8 67, i8* %131, align 1
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  store i8* %133, i8** %7, align 8
  %134 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  store i64 %134, i64* @state2, align 8
  br label %135

135:                                              ; preds = %122, %118
  %136 = load i64, i64* @state1, align 8
  %137 = load i64, i64* @STATE_TWOBYTE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i8, i8* @SO, align 1
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 %140, i8* %142, align 1
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %7, align 8
  %145 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %145, i64* @state1, align 8
  br label %146

146:                                              ; preds = %139, %135
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %148, i8* %150, align 1
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 %152, i8* %154, align 1
  %155 = load i32, i32* @COMBINE_STATE, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %5, align 4
  br label %163

160:                                              ; preds = %95, %90
  br label %161

161:                                              ; preds = %160, %77
  %162 = load i32, i32* @RET_ILUNI, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %146, %116, %70, %45
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_5__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ksc5601_wctomb(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
