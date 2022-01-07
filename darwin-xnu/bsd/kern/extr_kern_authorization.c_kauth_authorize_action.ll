; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_authorize_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_authorize_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32, i64, i64, i64, i64)*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i64, i64, i64, i64)*, i32, i32* }

@KAUTH_RESULT_DEFER = common dso_local global i32 0, align 4
@KS_F_HAS_LISTENERS = common dso_local global i32 0, align 4
@KAUTH_SCOPE_MAX_LISTENERS = common dso_local global i32 0, align 4
@KAUTH_RESULT_DENY = common dso_local global i32 0, align 4
@KAUTH_RESULT_ALLOW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_authorize_action(%struct.TYPE_5__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i32, i64, i64, i64, i64)*, i32 (i32, i32, i32, i64, i64, i64, i64)** %19, align 8
  %21 = icmp ne i32 (i32, i32, i32, i64, i64, i64, i64)* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %7
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, i32, i64, i64, i64, i64)*, i32 (i32, i32, i32, i64, i64, i64, i64)** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 %25(i32 %26, i32 %29, i32 %30, i64 %31, i64 %32, i64 %33, i64 %34)
  store i32 %35, i32* %15, align 4
  br label %38

36:                                               ; preds = %7
  %37 = load i32, i32* @KAUTH_RESULT_DEFER, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @KS_F_HAS_LISTENERS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %105, %45
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @KAUTH_SCOPE_MAX_LISTENERS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32, i32, i64, i64, i64, i64)*, i32 (i32, i32, i32, i64, i64, i64, i64)** %67, align 8
  %69 = icmp eq i32 (i32, i32, i32, i64, i64, i64, i64)* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %60, %50
  br label %105

71:                                               ; preds = %60
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (i32, i32, i32, i64, i64, i64, i64)*, i32 (i32, i32, i32, i64, i64, i64, i64)** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 %79(i32 %80, i32 %88, i32 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @KAUTH_RESULT_DENY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %71
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @KAUTH_RESULT_DEFER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %71
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %102, %98
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %46

108:                                              ; preds = %46
  br label %109

109:                                              ; preds = %108, %38
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @KAUTH_RESULT_ALLOW, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @EPERM, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 0, %113 ], [ %115, %114 ]
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
