; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blist_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }

@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@BLIST_META_RADIX_SHIFT = common dso_local global i32 0, align 4
@M_SWAP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @blist_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %5, align 4
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* @M_SWAP, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i32 4, i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = call i32 @bzero(%struct.TYPE_4__* %24, i32 24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @blst_radix_init(i32* null, i32 %37, i32 %40, i32 %41)
  %43 = add nsw i32 1, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @M_SWAP, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i8* @malloc(i32 %51, i32 %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @blst_radix_init(i32* %60, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %69
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @blst_radix_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
