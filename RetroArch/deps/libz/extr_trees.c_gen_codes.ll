; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_gen_codes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_gen_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"inconsistent bit counts\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"\0Agen_codes: max_code %d \00", align 1
@static_ltree = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"\0An %3d %c l %2d c %4x (%x) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*)* @gen_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_codes(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MAX_BITS, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @MAX_BITS, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %23, %29
  %31 = shl i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %17, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @MAX_BITS, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @MAX_BITS, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @Tracev(i32 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %110, %38
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %110

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %17, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @bi_reverse(i32 %74, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @static_ltree, align 8
  %85 = icmp ne %struct.TYPE_4__* %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @stderr, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @isgraph(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %70
  %93 = load i32, i32* %11, align 4
  br label %95

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 32, %94 ]
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %17, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @Tracecv(i32 %86, i32 %108)
  br label %110

110:                                              ; preds = %95, %69
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %56

113:                                              ; preds = %56
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32, i8*) #2

declare dso_local i32 @Tracev(i32) #2

declare dso_local i32 @bi_reverse(i32, i32) #2

declare dso_local i32 @Tracecv(i32, i32) #2

declare dso_local i64 @isgraph(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
