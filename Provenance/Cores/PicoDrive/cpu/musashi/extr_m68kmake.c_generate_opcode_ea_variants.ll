; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_generate_opcode_ea_variants.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kmake.c_generate_opcode_ea_variants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EA_MODE_NONE = common dso_local global i32 0, align 4
@EA_MODE_AI = common dso_local global i32 0, align 4
@EA_MODE_PI = common dso_local global i32 0, align 4
@EA_MODE_PI7 = common dso_local global i32 0, align 4
@EA_MODE_PD = common dso_local global i32 0, align 4
@EA_MODE_PD7 = common dso_local global i32 0, align 4
@EA_MODE_DI = common dso_local global i32 0, align 4
@EA_MODE_IX = common dso_local global i32 0, align 4
@EA_MODE_AW = common dso_local global i32 0, align 4
@EA_MODE_AL = common dso_local global i32 0, align 4
@EA_MODE_PCDI = common dso_local global i32 0, align 4
@EA_MODE_PCIX = common dso_local global i32 0, align 4
@EA_MODE_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_opcode_ea_variants(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @HAS_NO_EA_MODE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = load i32, i32* @EA_MODE_NONE, align 4
  %24 = call i32 @generate_opcode_handler(i32* %19, i32* %20, %struct.TYPE_7__* %21, %struct.TYPE_8__* %22, i32 %23)
  br label %216

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @HAS_EA_AI(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = load i32, i32* @EA_MODE_AI, align 4
  %37 = call i32 @generate_opcode_handler(i32* %32, i32* %33, %struct.TYPE_7__* %34, %struct.TYPE_8__* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HAS_EA_PI(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = load i32, i32* @EA_MODE_PI, align 4
  %53 = call i32 @generate_opcode_handler(i32* %48, i32* %49, %struct.TYPE_7__* %50, %struct.TYPE_8__* %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = load i32, i32* @EA_MODE_PI7, align 4
  %67 = call i32 @generate_opcode_handler(i32* %62, i32* %63, %struct.TYPE_7__* %64, %struct.TYPE_8__* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %47
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @HAS_EA_PD(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %69
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = load i32, i32* @EA_MODE_PD, align 4
  %84 = call i32 @generate_opcode_handler(i32* %79, i32* %80, %struct.TYPE_7__* %81, %struct.TYPE_8__* %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = load i32, i32* @EA_MODE_PD7, align 4
  %98 = call i32 @generate_opcode_handler(i32* %93, i32* %94, %struct.TYPE_7__* %95, %struct.TYPE_8__* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %78
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @HAS_EA_DI(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = load i32, i32* @EA_MODE_DI, align 4
  %115 = call i32 @generate_opcode_handler(i32* %110, i32* %111, %struct.TYPE_7__* %112, %struct.TYPE_8__* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %100
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @HAS_EA_IX(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = load i32, i32* @EA_MODE_IX, align 4
  %131 = call i32 @generate_opcode_handler(i32* %126, i32* %127, %struct.TYPE_7__* %128, %struct.TYPE_8__* %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %116
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @HAS_EA_AW(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = load i32, i32* @EA_MODE_AW, align 4
  %147 = call i32 @generate_opcode_handler(i32* %142, i32* %143, %struct.TYPE_7__* %144, %struct.TYPE_8__* %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %132
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @HAS_EA_AL(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load i32*, i32** %5, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = load i32, i32* @EA_MODE_AL, align 4
  %163 = call i32 @generate_opcode_handler(i32* %158, i32* %159, %struct.TYPE_7__* %160, %struct.TYPE_8__* %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %148
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @HAS_EA_PCDI(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load i32*, i32** %5, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = load i32, i32* @EA_MODE_PCDI, align 4
  %179 = call i32 @generate_opcode_handler(i32* %174, i32* %175, %struct.TYPE_7__* %176, %struct.TYPE_8__* %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %164
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @HAS_EA_PCIX(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %180
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = load i32, i32* @EA_MODE_PCIX, align 4
  %195 = call i32 @generate_opcode_handler(i32* %190, i32* %191, %struct.TYPE_7__* %192, %struct.TYPE_8__* %193, i32 %194)
  br label %196

196:                                              ; preds = %189, %180
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @HAS_EA_I(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %196
  %206 = load i32*, i32** %5, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = load i32, i32* @EA_MODE_I, align 4
  %211 = call i32 @generate_opcode_handler(i32* %206, i32* %207, %struct.TYPE_7__* %208, %struct.TYPE_8__* %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %196
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %18
  ret void
}

declare dso_local i64 @HAS_NO_EA_MODE(i32) #1

declare dso_local i32 @generate_opcode_handler(i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @HAS_EA_AI(i32) #1

declare dso_local i64 @HAS_EA_PI(i32) #1

declare dso_local i64 @HAS_EA_PD(i32) #1

declare dso_local i64 @HAS_EA_DI(i32) #1

declare dso_local i64 @HAS_EA_IX(i32) #1

declare dso_local i64 @HAS_EA_AW(i32) #1

declare dso_local i64 @HAS_EA_AL(i32) #1

declare dso_local i64 @HAS_EA_PCDI(i32) #1

declare dso_local i64 @HAS_EA_PCIX(i32) #1

declare dso_local i64 @HAS_EA_I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
