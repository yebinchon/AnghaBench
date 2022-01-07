; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_register_and_init_prng.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_register_and_init_prng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@nsources = common dso_local global i32 0, align 4
@ENTROPY_BUFFER_BYTE_SIZE = common dso_local global i32 0, align 4
@master_cpu = common dso_local global i64 0, align 8
@prng_fns = common dso_local global i32* null, align 8
@prng = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_and_init_prng(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @nsources, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @ENTROPY_BUFFER_BYTE_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = mul nuw i64 %8, %10
  %13 = alloca i32, i64 %12, align 16
  store i64 %8, i64* %4, align 8
  store i64 %10, i64* %5, align 8
  %14 = call i64 (...) @cpu_number()
  %15 = load i64, i64* @master_cpu, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** @prng_fns, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %2, align 8
  store i32* %23, i32** @prng_fns, align 8
  %24 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 3), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 3), align 4
  %26 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 1), align 4
  %27 = call i32 (...) @lck_attr_alloc_init()
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 0), align 4
  %30 = call i32 @lck_mtx_alloc_init(i32 %28, i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1, i32 2), align 4
  %31 = bitcast i32* %13 to i32**
  %32 = load i32, i32* @ENTROPY_BUFFER_BYTE_SIZE, align 4
  %33 = call i64 @entropy_readall(i32** %31, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = bitcast i32* %13 to i32**
  %36 = call i32 @prng_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 0), i64 %34, i32** %35)
  %37 = mul nuw i64 %8, %10
  %38 = mul nuw i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = bitcast i32* %13 to i32**
  %41 = call i32 @cc_clear(i32 %39, i32** %40)
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @cpu_number(...) #2

declare dso_local i32 @lck_grp_attr_alloc_init(...) #2

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #2

declare dso_local i32 @lck_attr_alloc_init(...) #2

declare dso_local i32 @lck_mtx_alloc_init(i32, i32) #2

declare dso_local i64 @entropy_readall(i32**, i32) #2

declare dso_local i32 @prng_init(i32*, i64, i32**) #2

declare dso_local i32 @cc_clear(i32, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
