; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_Votrax_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_Votrax_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i64)* }
%struct.TYPE_6__ = type { i64, i32*, i32* }

@votraxsc01_locals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PhonemeData = common dso_local global %struct.TYPE_6__* null, align 8
@PT_VS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Votrax_Update(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %163, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %164

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 1), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 1), align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %24, i32 0, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 1), align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 1), align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %163

40:                                               ; preds = %11
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 2), align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %132

43:                                               ; preds = %40
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 7), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 7), align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 8), align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (i64)*, i32 (i64)** %48, align 8
  %50 = icmp ne i32 (i64)* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 8), align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i64)*, i32 (i64)** %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 7), align 8
  %56 = call i32 %54(i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhonemeData, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 4), align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PT_VS, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhonemeData, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 63
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 5), align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhonemeData, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 63
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  br label %101

82:                                               ; preds = %61
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhonemeData, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 4), align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 0), align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 5), align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhonemeData, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 4), align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 0), align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  br label %101

101:                                              ; preds = %82, %69
  br label %102

102:                                              ; preds = %101, %58
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %7, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 5), align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %112, i32 %113, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 5), align 8
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 5), align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 3), align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %162

132:                                              ; preds = %40
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 2), align 8
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  br label %140

138:                                              ; preds = %132
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 2), align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %7, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 6), align 4
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memcpy(i32* %142, i32 %143, i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %5, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 6), align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 6), align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 2), align 8
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @votraxsc01_locals, i32 0, i32 2), align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %140, %110
  br label %163

163:                                              ; preds = %162, %22
  br label %8

164:                                              ; preds = %8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
