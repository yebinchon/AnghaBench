; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabSaveStateStream.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_YabSaveStateStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32*)* }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"YSS\00", align 1
@framecounter = common dso_local global i32 0, align 4
@MSH2 = common dso_local global i32 0, align 4
@SSH2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OTHR\00", align 1
@BupRam = common dso_local global i64 0, align 8
@HighWram = common dso_local global i64 0, align 8
@LowWram = common dso_local global i64 0, align 8
@yabsys = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@YABSYS_TIMING_BITS = common dso_local global i32 0, align 4
@CLKTYPE_26MHZ = common dso_local global i64 0, align 8
@VIDCore = common dso_local global %struct.TYPE_8__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@OSDMSG_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"STATE SAVED\00", align 1
@GL_BACK = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabSaveStateStream(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fputc(i32 1, i32* %18)
  store i32 2, i32* %4, align 4
  %20 = bitcast i32* %4 to i8*
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %20, i32 4, i32 1, i32* %21)
  store i32 0, i32* %4, align 4
  %23 = bitcast i32* %4 to i8*
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %23, i32 4, i32 1, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* @framecounter to i8*), i32 4, i32 1, i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* @framecounter to i8*), i32 4, i32 1, i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @CartSaveState(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @Cs2SaveState(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @MSH2, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @SH2SaveState(i32 %42, i32* %43)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SSH2, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @SH2SaveState(i32 %49, i32* %50)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @SoundSaveState(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @ScuSaveState(i32* %62)
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @SmpcSaveState(i32* %68)
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @Vdp1SaveState(i32* %74)
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @Vdp2SaveState(i32* %80)
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @StateWriteHeader(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %87, i32* %5, align 4
  %88 = load i64, i64* @BupRam, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %89, i32 65536, i32 1, i32* %90)
  %92 = load i64, i64* @HighWram, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %93, i32 1048576, i32 1, i32* %94)
  %96 = load i64, i64* @LowWram, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %97, i32 1048576, i32 1, i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 7) to i8*), i32 4, i32 1, i32* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 6) to i8*), i32 4, i32 1, i32* %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 5) to i8*), i32 4, i32 1, i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 4) to i8*), i32 4, i32 1, i32* %106)
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 0), align 8
  %109 = load i32, i32* @YABSYS_TIMING_BITS, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %12, align 4
  %111 = bitcast i32* %12 to i8*
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %111, i32 4, i32 1, i32* %112)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 1), align 8
  %115 = load i64, i64* @CLKTYPE_26MHZ, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 268, i32 286
  store i32 %118, i32* %12, align 4
  %119 = bitcast i32* %12 to i8*
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %119, i32 4, i32 1, i32* %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 2), align 8
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sdiv i32 %124, 10
  %126 = load i32, i32* @YABSYS_TIMING_BITS, align 4
  %127 = ashr i32 %125, %126
  store i32 %127, i32* %13, align 4
  %128 = bitcast i32* %13 to i8*
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %128, i32 4, i32 1, i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 1) to i8*), i32 4, i32 1, i32* %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 3) to i8*), i32 4, i32 1, i32* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VIDCore, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %136, align 8
  %138 = call i32 %137(i32* %9, i32* %10)
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i64 @malloc(i32 %145)
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %7, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %196

150:                                              ; preds = %1
  %151 = call i32 (...) @YuiSwapBuffers()
  %152 = call i32 (...) @YuiSwapBuffers()
  %153 = bitcast i32* %9 to i8*
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %153, i32 4, i32 1, i32* %154)
  %156 = bitcast i32* %10 to i8*
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %156, i32 4, i32 1, i32* %157)
  %159 = load i32*, i32** %7, align 8
  %160 = bitcast i32* %159 to i8*
  %161 = load i32, i32* %8, align 4
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %160, i32 %161, i32 1, i32* %162)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @ftell(i32* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = bitcast %struct.TYPE_6__* %6 to { i64, i64 }*
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @SaveMovieInState(i32* %166, i64 %169, i64 %171)
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* %5, align 4
  %175 = call i64 @StateFinishHeader(i32* %173, i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* @SEEK_SET, align 4
  %182 = call i32 @fseek(i32* %180, i32 8, i32 %181)
  %183 = bitcast i32* %4 to i8*
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %183, i32 4, i32 1, i32* %184)
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @SEEK_SET, align 4
  %188 = call i32 @fseek(i32* %186, i32 16, i32 %187)
  %189 = bitcast i32* %11 to i8*
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @ywrite(%struct.TYPE_6__* %6, i8* %189, i32 4, i32 1, i32* %190)
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @free(i32* %192)
  %194 = load i32, i32* @OSDMSG_STATUS, align 4
  %195 = call i32 @OSDPushMessage(i32 %194, i32 150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %150, %149
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @ywrite(%struct.TYPE_6__*, i8*, i32, i32, i32*) #1

declare dso_local i64 @CartSaveState(i32*) #1

declare dso_local i64 @Cs2SaveState(i32*) #1

declare dso_local i64 @SH2SaveState(i32, i32*) #1

declare dso_local i64 @SoundSaveState(i32*) #1

declare dso_local i64 @ScuSaveState(i32*) #1

declare dso_local i64 @SmpcSaveState(i32*) #1

declare dso_local i64 @Vdp1SaveState(i32*) #1

declare dso_local i64 @Vdp2SaveState(i32*) #1

declare dso_local i32 @StateWriteHeader(i32*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @YuiSwapBuffers(...) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @SaveMovieInState(i32*, i64, i64) #1

declare dso_local i64 @StateFinishHeader(i32*, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @OSDPushMessage(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
