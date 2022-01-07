; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx.c_gxv_morx_chain_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx.c_gxv_morx_chain_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"morx chain header\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__*)* @gxv_morx_chain_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_chain_validate(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @GXV_LIMIT_CHECK(i32 16)
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FT_NEXT_ULONG(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @FT_NEXT_ULONG(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @FT_NEXT_ULONG(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = call i32 @gxv_mort_featurearray_validate(i32 %22, i32 %23, i32 %24, %struct.TYPE_5__* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp sge i64 %33, 65536
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %37

37:                                               ; preds = %35, %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = call i32 @gxv_morx_subtables_validate(i32 %38, i32 %41, i32 %42, %struct.TYPE_5__* %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i32) #1

declare dso_local i32 @gxv_mort_featurearray_validate(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gxv_morx_subtables_validate(i32, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
