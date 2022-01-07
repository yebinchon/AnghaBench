; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@C_DONT_BLOCK = common dso_local global i32 0, align 4
@C_SV_CSEG_ID = common dso_local global i64 0, align 8
@c_segment_pages_compressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_compressor_free(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @C_DONT_BLOCK, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @C_SV_CSEG_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @c_segment_sv_hash_drop_ref(i32 %29)
  %31 = call i32 @OSAddAtomic(i32 -1, i32* @c_segment_pages_compressed)
  %32 = load i32*, i32** %4, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %48

33:                                               ; preds = %15
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @c_decompress_page(i32* null, %struct.TYPE_3__* %34, i32 %35, i32* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  store i32 0, i32* %40, align 4
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, -2
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %41, %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @c_segment_sv_hash_drop_ref(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @c_decompress_page(i32*, %struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
