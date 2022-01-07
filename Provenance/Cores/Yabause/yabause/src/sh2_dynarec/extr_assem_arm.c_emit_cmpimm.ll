; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_cmpimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_cmpimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"cmp %s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"cmn %s,#%d\0A\00", align 1
@HOST_TEMPREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"cmp %s,r14\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cmn %s,r14\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_cmpimm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @genimm(i32 %6, i32* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32*, i32** @regname, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @rd_rn_rm(i32 0, i32 %17, i32 0)
  %19 = or i32 -481296384, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @output_w32(i32 %21)
  br label %86

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i64 @genimm(i32 %25, i32* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i32*, i32** @regname, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rd_rn_rm(i32 0, i32 %36, i32 0)
  %38 = or i32 -479199232, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @output_w32(i32 %40)
  br label %85

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 65536
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @HOST_TEMPREG, align 4
  %52 = call i32 @emit_movimm(i32 %50, i32 %51)
  %53 = load i32*, i32** @regname, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @HOST_TEMPREG, align 4
  %61 = call i32 @rd_rn_rm(i32 0, i32 %59, i32 %60)
  %62 = or i32 -514850816, %61
  %63 = call i32 @output_w32(i32 %62)
  br label %84

64:                                               ; preds = %42
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, -65536
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32, i32* @HOST_TEMPREG, align 4
  %72 = call i32 @emit_movimm(i32 %70, i32 %71)
  %73 = load i32*, i32** @regname, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @HOST_TEMPREG, align 4
  %81 = call i32 @rd_rn_rm(i32 0, i32 %79, i32 %80)
  %82 = or i32 -512753664, %81
  %83 = call i32 @output_w32(i32 %82)
  br label %84

84:                                               ; preds = %64, %45
  br label %85

85:                                               ; preds = %84, %28
  br label %86

86:                                               ; preds = %85, %9
  ret void
}

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, ...) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
