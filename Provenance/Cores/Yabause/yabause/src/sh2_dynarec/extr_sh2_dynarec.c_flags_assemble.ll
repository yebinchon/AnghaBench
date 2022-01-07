; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_flags_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_flags_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@SR = common dso_local global i32 0, align 4
@opcode2 = common dso_local global i32* null, align 8
@opcode3 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flags_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %7 = load %struct.regstat*, %struct.regstat** %4, align 8
  %8 = getelementptr inbounds %struct.regstat, %struct.regstat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SR, align 4
  %11 = call signext i8 @get_reg(i32 %9, i32 %10)
  store i8 %11, i8* %5, align 1
  %12 = load i32*, i32** @opcode2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load i32*, i32** @opcode3, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @emit_andimm(i8 signext %26, i32 -2, i8 signext %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32*, i32** @opcode3, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8, i8* %5, align 1
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @emit_orimm(i8 signext %37, i32 1, i8 signext %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %67

41:                                               ; preds = %2
  %42 = load i32*, i32** @opcode2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.regstat*, %struct.regstat** %4, align 8
  %50 = getelementptr inbounds %struct.regstat, %struct.regstat* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @rt1, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call signext i8 @get_reg(i32 %51, i32 %56)
  store i8 %57, i8* %6, align 1
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i8, i8* %5, align 1
  %63 = load i8, i8* %6, align 1
  %64 = call i32 @emit_andimm(i8 signext %62, i32 1, i8 signext %63)
  br label %65

65:                                               ; preds = %61, %48
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %40
  ret void
}

declare dso_local signext i8 @get_reg(i32, i32) #1

declare dso_local i32 @emit_andimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_orimm(i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
