; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ext_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ext_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@rt1 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %7 = load %struct.regstat*, %struct.regstat** %4, align 8
  %8 = getelementptr inbounds %struct.regstat, %struct.regstat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @rt1, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call signext i8 @get_reg(i32 %9, i32 %14)
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %130

19:                                               ; preds = %2
  %20 = load %struct.regstat*, %struct.regstat** %4, align 8
  %21 = getelementptr inbounds %struct.regstat, %struct.regstat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @rs1, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call signext i8 @get_reg(i32 %22, i32 %27)
  store i8 %28, i8* %5, align 1
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %19
  %33 = load i32*, i32** @opcode2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8, i8* %5, align 1
  %41 = load i8, i8* %6, align 1
  %42 = call i32 @emit_movzbl_reg(i8 signext %40, i8 signext %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32*, i32** @opcode2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8, i8* %5, align 1
  %52 = load i8, i8* %6, align 1
  %53 = call i32 @emit_movzwl_reg(i8 signext %51, i8 signext %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32*, i32** @opcode2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 14
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8, i8* %5, align 1
  %63 = load i8, i8* %6, align 1
  %64 = call i32 @emit_movsbl_reg(i8 signext %62, i8 signext %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32*, i32** @opcode2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 15
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i8, i8* %5, align 1
  %74 = load i8, i8* %6, align 1
  %75 = call i32 @emit_movswl_reg(i8 signext %73, i8 signext %74)
  br label %76

76:                                               ; preds = %72, %65
  br label %129

77:                                               ; preds = %19
  %78 = load i32*, i32** @rs1, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @emit_loadreg(i32 %82, i8 signext %83)
  %85 = load i32*, i32** @opcode2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 12
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i8, i8* %6, align 1
  %93 = load i8, i8* %6, align 1
  %94 = call i32 @emit_movzbl_reg(i8 signext %92, i8 signext %93)
  br label %95

95:                                               ; preds = %91, %77
  %96 = load i32*, i32** @opcode2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 13
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i8, i8* %6, align 1
  %104 = load i8, i8* %6, align 1
  %105 = call i32 @emit_movzwl_reg(i8 signext %103, i8 signext %104)
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32*, i32** @opcode2, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 14
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i8, i8* %6, align 1
  %115 = load i8, i8* %6, align 1
  %116 = call i32 @emit_movsbl_reg(i8 signext %114, i8 signext %115)
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i32*, i32** @opcode2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 15
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i8, i8* %6, align 1
  %126 = load i8, i8* %6, align 1
  %127 = call i32 @emit_movswl_reg(i8 signext %125, i8 signext %126)
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %76
  br label %130

130:                                              ; preds = %129, %2
  ret void
}

declare dso_local signext i8 @get_reg(i32, i32) #1

declare dso_local i32 @emit_movzbl_reg(i8 signext, i8 signext) #1

declare dso_local i32 @emit_movzwl_reg(i8 signext, i8 signext) #1

declare dso_local i32 @emit_movsbl_reg(i8 signext, i8 signext) #1

declare dso_local i32 @emit_movswl_reg(i8 signext, i8 signext) #1

declare dso_local i32 @emit_loadreg(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
