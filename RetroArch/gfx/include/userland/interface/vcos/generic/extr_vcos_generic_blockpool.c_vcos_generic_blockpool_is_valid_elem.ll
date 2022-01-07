; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_is_valid_elem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_is_valid_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcos_generic_blockpool_is_valid_elem(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @ASSERT_POOL(%struct.TYPE_9__* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = call i32 @vcos_mutex_lock(i32* %20)
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %90, %18
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = call i32 @ASSERT_SUBPOOL(%struct.TYPE_10__* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %28
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %49, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = icmp ugt i8* %59, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %45
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_11__*
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 -1
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %10, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = icmp eq %struct.TYPE_10__* %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = icmp eq %struct.TYPE_9__* %82, %83
  br label %85

85:                                               ; preds = %79, %69
  %86 = phi i1 [ false, %69 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %93

88:                                               ; preds = %65, %45
  br label %89

89:                                               ; preds = %88, %40, %28
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %22

93:                                               ; preds = %85, %22
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = call i32 @vcos_mutex_unlock(i32* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @ASSERT_POOL(%struct.TYPE_9__*) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @ASSERT_SUBPOOL(%struct.TYPE_10__*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
