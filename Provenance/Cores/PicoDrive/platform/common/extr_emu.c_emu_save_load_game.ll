; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_save_load_game.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_save_load_game.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i8* }

@state_slot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LOAD FAILED (missing file)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SAVE FAILED\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"saveLoad (%i, %i): %s\0A\00", align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_MCD_RAMCART = common dso_local global i32 0, align 4
@SRam = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"STATE LOADED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"STATE SAVED\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"LOAD FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_save_load_game(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @state_slot, align 4
  %15 = call i8* @emu_get_save_fname(i32 %12, i32 %13, i32 %14, i32* null)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %26 = call i32 @emu_status_msg(i8* %25)
  br label %27

27:                                               ; preds = %21, %18
  store i32 -1, i32* %3, align 4
  br label %182

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @lprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30, i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %159

35:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  %36 = load i32, i32* @PicoAHW, align 4
  %37 = load i32, i32* @PAHW_MCD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i32, i32* @PicoOpt, align 4
  %42 = load i32, i32* @POPT_EN_MCD_RAMCART, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  store i32 73728, i32* %9, align 4
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 0), align 8
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = call i32 @memcpy32(i32* %51, i32* %55, i32 2048)
  br label %57

57:                                               ; preds = %49, %45
  br label %62

58:                                               ; preds = %40
  store i32 8192, i32* %9, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %57
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 1), align 8
  store i32 %64, i32* %9, align 4
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 0), align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i8*, i8** %10, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %182

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32* @fopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %182

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @fread(i8* %80, i32 1, i32 %81, i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 -1
  store i32 %87, i32* %6, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @fclose(i32* %88)
  %90 = load i32, i32* @PicoAHW, align 4
  %91 = load i32, i32* @PAHW_MCD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %79
  %95 = load i32, i32* @PicoOpt, align 4
  %96 = load i32, i32* @POPT_EN_MCD_RAMCART, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i8*, i8** %10, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = call i32 @memcpy32(i32* %103, i32* %105, i32 2048)
  br label %107

107:                                              ; preds = %99, %94, %79
  br label %157

108:                                              ; preds = %70
  br label %109

109:                                              ; preds = %122, %108
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %125

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %9, align 4
  br label %109

125:                                              ; preds = %120, %109
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %134 = call i32* @fopen(i8* %129, i8* %133)
  store i32* %134, i32** %8, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i8*, i8** %7, align 8
  %139 = call i32* @fopen(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %139, i32** %8, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load i32*, i32** %8, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i32 -1, i32* %3, align 4
  br label %182

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @fwrite(i8* %145, i32 1, i32 %146, i32* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 -1, i32 0
  store i32 %153, i32* %6, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @fclose(i32* %154)
  br label %156

156:                                              ; preds = %144, %125
  br label %157

157:                                              ; preds = %156, %107
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %3, align 4
  br label %182

159:                                              ; preds = %28
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 @PicoState(i8* %160, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  %173 = call i32 @emu_status_msg(i8* %172)
  br label %180

174:                                              ; preds = %159
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %179 = call i32 @emu_status_msg(i8* %178)
  store i32 -1, i32* %6, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %157, %143, %78, %69, %27
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i8* @emu_get_save_fname(i32, i32, i32, i32*) #1

declare dso_local i32 @emu_status_msg(i8*) #1

declare dso_local i32 @lprintf(i8*, i32, i32, i8*) #1

declare dso_local i32 @memcpy32(i32*, i32*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @PicoState(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
