; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_entry_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_entry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"  reserved 14bit is non-zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*, i32, i32, i32)* @gxv_morx_subtable_type2_entry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtable_type2_entry_validate(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FT_UNUSED(i32 %15)
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @FT_UNUSED(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 8191
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 0, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @gxv_morx_subtable_type2_ligActionIndex_validate(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_morx_subtable_type2_ligActionIndex_validate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
