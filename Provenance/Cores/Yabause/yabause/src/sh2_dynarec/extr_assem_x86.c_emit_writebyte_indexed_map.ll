; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writebyte_indexed_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writebyte_indexed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"movb %%%cl,%x(%%%s,%%%s,1)\0A\00", align 1
@regname = common dso_local global i32** null, align 8
@ESP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4
@EAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_writebyte_indexed_map(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @emit_writebyte_indexed(i32 %14, i32 %15, i32 %16)
  br label %112

18:                                               ; preds = %5
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  %22 = load i32**, i32*** @regname, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32**, i32*** @regname, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** @regname, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @assem_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32* %34, i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ESP, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 @output_byte(i32 136)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %21
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EBP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @output_modrm(i32 0, i32 4, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @output_sib(i32 0, i32 %56, i32 %57)
  br label %82

59:                                               ; preds = %49, %21
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, -128
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @output_modrm(i32 1, i32 4, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @output_sib(i32 0, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @output_byte(i32 %71)
  br label %81

73:                                               ; preds = %62, %59
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @output_modrm(i32 2, i32 4, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @output_sib(i32 0, i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @output_w32(i32 %79)
  br label %81

81:                                               ; preds = %73, %65
  br label %82

82:                                               ; preds = %81, %53
  br label %111

83:                                               ; preds = %18
  %84 = load i32, i32* @EAX, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @emit_xchg(i32 %84, i32 %85)
  %87 = load i32, i32* @EAX, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @EAX, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %6, align 4
  br label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @EAX, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load i32, i32* %10, align 4
  call void @emit_writebyte_indexed_map(i32 %87, i32 %88, i32 %97, i32 %106, i32 %107)
  %108 = load i32, i32* @EAX, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @emit_xchg(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %82
  br label %112

112:                                              ; preds = %111, %13
  ret void
}

declare dso_local i32 @emit_writebyte_indexed(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_sib(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @emit_xchg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
