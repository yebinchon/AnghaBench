; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_alloc_asid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_alloc_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmaps_lock = common dso_local global i32 0, align 4
@MAX_ASID = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@asid_bitmap = common dso_local global i32* null, align 8
@ARM_MAX_ASID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"alloc_asid(): out of ASID number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alloc_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_asid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %63, %0
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @MAX_ASID, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @NBBY, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = udiv i64 %9, %12
  %14 = icmp ult i64 %7, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %5
  %16 = load i32*, i32** @asid_bitmap, align 8
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ffs(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32*, i32** @asid_bitmap, align 8
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %37 = load i32, i32* %2, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = load i32, i32* @NBBY, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %39, %41
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = load i32, i32* @ARM_MAX_ASID, align 4
  %47 = zext i32 %46 to i64
  %48 = urem i64 %45, %47
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = load i32, i32* @NBBY, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %1, align 4
  br label %70

62:                                               ; preds = %15
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %2, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %5

66:                                               ; preds = %5
  %67 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %68 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @MAX_ASID, align 4
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %66, %24
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
