; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_completeLine.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_completeLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i8**, i32*, i32 }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linenoiseState*)* @completeLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completeLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linenoiseState*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.linenoiseState, align 8
  store %struct.linenoiseState* %0, %struct.linenoiseState** %3, align 8
  %11 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  store i8 0, i8* %7, align 1
  %12 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %13 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @completionCallback(i8* %14, %struct.TYPE_4__* %4)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @linenoiseBeep()
  br label %128

21:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %126, %21
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %127

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %33 = bitcast %struct.linenoiseState* %10 to i8*
  %34 = bitcast %struct.linenoiseState* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %44 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %51 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %53 = call i32 @refreshLine(%struct.linenoiseState* %52)
  %54 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %57 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %61 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %10, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %65 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %69

66:                                               ; preds = %26
  %67 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %68 = call i32 @refreshLine(%struct.linenoiseState* %67)
  br label %69

69:                                               ; preds = %66, %31
  %70 = load i32, i32* @stdin, align 4
  %71 = call i32 @fread(i8* %7, i32 1, i32 1, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @freeCompletions(%struct.TYPE_4__* %4)
  store i32 -1, i32* %2, align 4
  br label %132

76:                                               ; preds = %69
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %102 [
    i32 128, label %79
    i32 129, label %93
  ]

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = urem i64 %81, %84
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = call i32 (...) @linenoiseBeep()
  br label %92

92:                                               ; preds = %90, %79
  br label %126

93:                                               ; preds = %76
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %100 = call i32 @refreshLine(%struct.linenoiseState* %99)
  br label %101

101:                                              ; preds = %98, %93
  store i64 1, i64* %8, align 8
  br label %126

102:                                              ; preds = %76
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %109 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %112 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @snprintf(i8* %110, i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %122 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %124 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 8
  br label %125

125:                                              ; preds = %107, %102
  store i64 1, i64* %8, align 8
  br label %126

126:                                              ; preds = %125, %101, %92
  br label %22

127:                                              ; preds = %22
  br label %128

128:                                              ; preds = %127, %19
  %129 = call i32 @freeCompletions(%struct.TYPE_4__* %4)
  %130 = load i8, i8* %7, align 1
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %74
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @completionCallback(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @linenoiseBeep(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32) #2

declare dso_local i32 @freeCompletions(%struct.TYPE_4__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
