; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_create_on_heap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_create_on_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: num_blocks %d block_size %d name %s\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@VCOS_ENOMEM = common dso_local global i64 0, align 8
@VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vcos_generic_blockpool_create_on_heap(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* @VCOS_SUCCESS, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @VCOS_BLOCKPOOL_SIZE(i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i8* @vcos_malloc(i64 %22, i8* %23)
  store i8* %24, i8** %16, align 8
  %25 = load i32, i32* @VCOS_FUNCTION, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i8* %28)
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %6
  %33 = load i64, i64* @VCOS_ENOMEM, align 8
  store i64 %33, i64* %7, align 8
  br label %62

34:                                               ; preds = %6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = call i64 @vcos_generic_blockpool_init(%struct.TYPE_6__* %35, i32 %36, i32 %37, i8* %38, i64 %39, i32 %40, i32 %41, i8* %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @VCOS_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %58

48:                                               ; preds = %34
  %49 = load i32, i32* @VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %7, align 8
  br label %62

58:                                               ; preds = %47
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @vcos_free(i8* %59)
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %48, %32
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i64 @VCOS_BLOCKPOOL_SIZE(i32, i32, i32) #1

declare dso_local i8* @vcos_malloc(i64, i8*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @vcos_generic_blockpool_init(%struct.TYPE_6__*, i32, i32, i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @vcos_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
