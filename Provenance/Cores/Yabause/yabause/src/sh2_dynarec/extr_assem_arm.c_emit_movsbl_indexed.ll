; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_movsbl_indexed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_movsbl_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ldrsb %s,%s+%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_movsbl_indexed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, -256
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 256
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** @regname, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @regname, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @rd_rn_rm(i32 %31, i32 %32, i32 0)
  %34 = or i32 -506462000, %33
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 3840
  %38 = or i32 %34, %37
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 15
  %41 = or i32 %38, %40
  %42 = call i32 @output_w32(i32 %41)
  br label %58

43:                                               ; preds = %12
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rd_rn_rm(i32 %44, i32 %45, i32 0)
  %47 = or i32 -514850608, %46
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 0, %48
  %50 = shl i32 %49, 4
  %51 = and i32 %50, 3840
  %52 = or i32 %47, %51
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 0, %53
  %55 = and i32 %54, 15
  %56 = or i32 %52, %55
  %57 = call i32 @output_w32(i32 %56)
  br label %58

58:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
