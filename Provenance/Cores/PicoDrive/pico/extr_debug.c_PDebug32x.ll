; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebug32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebug32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16*, i16*, i32, i32, i16*, i32*, i32* }

@dstr = common dso_local global i8* null, align 8
@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"regs:\0A\00", align 1
@MVP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%02x: %04x %04x %04x %04x %04x %04x %04x %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"SH: %04x %04x %04x      IRQs: %02x  eflags: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VDP regs:\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"                   mSH2              sSH2\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"PC,SR %08x,     %03x %08x,     %03x\0A\00", align 1
@msh2 = common dso_local global i32 0, align 4
@ssh2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"R%d,%2d %08x,%08x %08x,%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"gb,vb %08x,%08x %08x,%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"IRQs/mask:        %02x/%02x             %02x/%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PDebug32x() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @dstr, align 8
  store i8* %4, i8** %1, align 8
  %5 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  store i16* %5, i16** %2, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @MVP, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %74, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %77

12:                                               ; preds = %9
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 2
  %16 = load i16*, i16** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %16, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16*, i16** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %23, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16*, i16** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %30, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16*, i16** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %37, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16*, i16** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %44, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16*, i16** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %51, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16*, i16** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 6
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %58, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16*, i16** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 7
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %65, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %22, i32 %29, i32 %36, i32 %43, i32 %50, i32 %57, i32 %64, i32 %71)
  %73 = load i32, i32* @MVP, align 4
  br label %74

74:                                               ; preds = %12
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 8
  store i32 %76, i32* %3, align 4
  br label %9

77:                                               ; preds = %9
  %78 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  store i16* %78, i16** %2, align 8
  %79 = load i8*, i8** %1, align 8
  %80 = load i16*, i16** %2, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 0
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16*, i16** %2, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 1
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16*, i16** %2, align 8
  %89 = getelementptr inbounds i16, i16* %88, i64 2
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 2), align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 3), align 4
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @MVP, align 4
  store i32 0, i32* %3, align 4
  %96 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 4), align 8
  store i16* %96, i16** %2, align 8
  %97 = load i8*, i8** %1, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @MVP, align 4
  %100 = load i8*, i8** %1, align 8
  %101 = load i32, i32* %3, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load i16*, i16** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %103, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = load i16*, i16** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %110, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16*, i16** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %117, i64 %120
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16*, i16** %2, align 8
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %124, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16*, i16** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %131, i64 %134
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16*, i16** %2, align 8
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 5
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16, i16* %138, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16*, i16** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 6
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %145, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = zext i16 %150 to i32
  %152 = load i16*, i16** %2, align 8
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 7
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16, i16* %152, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %109, i32 %116, i32 %123, i32 %130, i32 %137, i32 %144, i32 %151, i32 %158)
  %160 = load i32, i32* @MVP, align 4
  %161 = load i8*, i8** %1, align 8
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @MVP, align 4
  %164 = load i8*, i8** %1, align 8
  %165 = call i32 @sh2_pc(i32* @msh2)
  %166 = call i32 @sh2_sr(i32 0)
  %167 = call i32 @sh2_pc(i32* @ssh2)
  %168 = call i32 @sh2_sr(i32 1)
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* @MVP, align 4
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %191, %77
  %172 = load i32, i32* %3, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %194

174:                                              ; preds = %171
  %175 = load i8*, i8** %1, align 8
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 8
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @sh2_reg(i32 0, i32 %179)
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 8
  %183 = call i32 @sh2_reg(i32 0, i32 %182)
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @sh2_reg(i32 1, i32 %184)
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 8
  %188 = call i32 @sh2_reg(i32 1, i32 %187)
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %178, i32 %180, i32 %183, i32 %185, i32 %188)
  %190 = load i32, i32* @MVP, align 4
  br label %191

191:                                              ; preds = %174
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %3, align 4
  br label %171

194:                                              ; preds = %171
  %195 = load i8*, i8** %1, align 8
  %196 = call i32 @sh2_gbr(i32 0)
  %197 = call i32 @sh2_vbr(i32 0)
  %198 = call i32 @sh2_gbr(i32 1)
  %199 = call i32 @sh2_vbr(i32 1)
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* @MVP, align 4
  %202 = load i8*, i8** %1, align 8
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 5), align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 6), align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 5), align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 6), align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %205, i32 %208, i32 %211, i32 %214)
  %216 = load i32, i32* @MVP, align 4
  %217 = load i8*, i8** @dstr, align 8
  ret i8* %217
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sh2_pc(i32*) #1

declare dso_local i32 @sh2_sr(i32) #1

declare dso_local i32 @sh2_reg(i32, i32) #1

declare dso_local i32 @sh2_gbr(i32) #1

declare dso_local i32 @sh2_vbr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
