; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_type4_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_type4_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"variantsAxis 0x%08x is non default value\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"type4:minimumLimit 0x%08x > noStretchValue 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"type4:noStretchValue 0x%08x > maximumLimit 0x%08x\0A\00", align 1
@IS_PARANOID_VALIDATION = common dso_local global i32 0, align 4
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_3__*)* @gxv_just_actSubrecord_type4_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_just_actSubrecord_type4_validate(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %7, align 8
  %13 = call i32 @GXV_LIMIT_CHECK(i32 16)
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @FT_NEXT_ULONG(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @FT_NEXT_LONG(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @FT_NEXT_LONG(i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @FT_NEXT_LONG(i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 1685414772
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @GXV_TRACE(i8* %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @GXV_TRACE(i8* %43)
  br label %60

45:                                               ; preds = %36
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @GXV_TRACE(i8* %52)
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @IS_PARANOID_VALIDATION, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %62

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %62

62:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i64) #1

declare dso_local i64 @FT_NEXT_LONG(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
