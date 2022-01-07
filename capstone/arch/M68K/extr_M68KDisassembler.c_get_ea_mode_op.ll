; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_get_ea_mode_op.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_get_ea_mode_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }

@M68K_OP_MEM = common dso_local global i8* null, align 8
@M68K_AM_REG_DIRECT_DATA = common dso_local global i32 0, align 4
@M68K_REG_D0 = common dso_local global i32 0, align 4
@M68K_OP_REG = common dso_local global i8* null, align 8
@M68K_AM_REG_DIRECT_ADDR = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i32 0, align 4
@M68K_AM_REGI_ADDR = common dso_local global i32 0, align 4
@M68K_AM_REGI_ADDR_POST_INC = common dso_local global i32 0, align 4
@M68K_AM_REGI_ADDR_PRE_DEC = common dso_local global i32 0, align 4
@M68K_AM_REGI_ADDR_DISP = common dso_local global i32 0, align 4
@M68K_AM_ABSOLUTE_DATA_SHORT = common dso_local global i32 0, align 4
@M68K_AM_ABSOLUTE_DATA_LONG = common dso_local global i32 0, align 4
@M68K_AM_PCI_DISP = common dso_local global i32 0, align 4
@M68K_AM_IMMEDIATE = common dso_local global i32 0, align 4
@M68K_OP_IMM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32)* @get_ea_mode_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ea_mode_op(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** @M68K_OP_MEM, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 63
  switch i32 %13, label %169 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 8, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
    i32 14, label %27
    i32 15, label %27
    i32 16, label %40
    i32 17, label %40
    i32 18, label %40
    i32 19, label %40
    i32 20, label %40
    i32 21, label %40
    i32 22, label %40
    i32 23, label %40
    i32 24, label %50
    i32 25, label %50
    i32 26, label %50
    i32 27, label %50
    i32 28, label %50
    i32 29, label %50
    i32 30, label %50
    i32 31, label %50
    i32 32, label %60
    i32 33, label %60
    i32 34, label %60
    i32 35, label %60
    i32 36, label %60
    i32 37, label %60
    i32 38, label %60
    i32 39, label %60
    i32 40, label %70
    i32 41, label %70
    i32 42, label %70
    i32 43, label %70
    i32 44, label %70
    i32 45, label %70
    i32 46, label %70
    i32 47, label %70
    i32 48, label %88
    i32 49, label %88
    i32 50, label %88
    i32 51, label %88
    i32 52, label %88
    i32 53, label %88
    i32 54, label %88
    i32 55, label %88
    i32 56, label %94
    i32 57, label %102
    i32 58, label %111
    i32 59, label %122
    i32 60, label %128
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %15 = load i32, i32* @M68K_AM_REG_DIRECT_DATA, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @M68K_REG_D0, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 7
  %21 = add nsw i32 %18, %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @M68K_OP_REG, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %170

27:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %28 = load i32, i32* @M68K_AM_REG_DIRECT_ADDR, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @M68K_REG_A0, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 7
  %34 = add nsw i32 %31, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @M68K_OP_REG, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %170

40:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %41 = load i32, i32* @M68K_AM_REGI_ADDR, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @M68K_REG_A0, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 7
  %47 = add nsw i32 %44, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %170

50:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %51 = load i32, i32* @M68K_AM_REGI_ADDR_POST_INC, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @M68K_REG_A0, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 7
  %57 = add nsw i32 %54, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %170

60:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %61 = load i32, i32* @M68K_AM_REGI_ADDR_PRE_DEC, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @M68K_REG_A0, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 7
  %67 = add nsw i32 %64, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %170

70:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %71 = load i32, i32* @M68K_AM_REGI_ADDR_DISP, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @M68K_REG_A0, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 7
  %77 = add nsw i32 %74, %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @read_imm_16(i32* %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  br label %170

88:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @get_with_index_address_mode(i32* %89, %struct.TYPE_6__* %90, i32 %91, i32 %92, i32 0)
  br label %170

94:                                               ; preds = %4
  %95 = load i32, i32* @M68K_AM_ABSOLUTE_DATA_SHORT, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @read_imm_16(i32* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %170

102:                                              ; preds = %4
  %103 = load i32, i32* @M68K_AM_ABSOLUTE_DATA_LONG, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i8* @read_imm_32(i32* %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %170

111:                                              ; preds = %4
  %112 = load i32, i32* @M68K_AM_PCI_DISP, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @read_imm_16(i32* %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  br label %170

122:                                              ; preds = %4
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @get_with_index_address_mode(i32* %123, %struct.TYPE_6__* %124, i32 %125, i32 %126, i32 1)
  br label %170

128:                                              ; preds = %4
  %129 = load i32, i32* @M68K_AM_IMMEDIATE, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @M68K_OP_IMM, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @read_imm_8(i32* %138)
  %140 = and i32 %139, 255
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %168

143:                                              ; preds = %128
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @read_imm_16(i32* %147)
  %149 = and i32 %148, 65535
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %167

152:                                              ; preds = %143
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32*, i32** %5, align 8
  %157 = call i8* @read_imm_32(i32* %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %166

161:                                              ; preds = %152
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @read_imm_64(i32* %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %155
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %137
  br label %170

169:                                              ; preds = %4
  br label %170

170:                                              ; preds = %169, %168, %122, %111, %102, %94, %88, %70, %60, %50, %40, %27, %14
  ret void
}

declare dso_local i32 @read_imm_16(i32*) #1

declare dso_local i32 @get_with_index_address_mode(i32*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i8* @read_imm_32(i32*) #1

declare dso_local i32 @read_imm_8(i32*) #1

declare dso_local i32 @read_imm_64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
