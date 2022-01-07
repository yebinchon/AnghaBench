; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_Load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"LOAD Command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@h_devnum = common dso_local global i64 0, align 8
@Devices_h_exe_path = common dso_local global i8* null, align 8
@atari_filename = common dso_local global i8* null, align 8
@host_path = common dso_local global i32 0, align 4
@Devices_atari_h_dir = common dso_local global i32* null, align 8
@atari_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@binf = common dso_local global i32* null, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_SetN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"H: load: not valid BIN file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Devices_H_Load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_Load(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @devbug, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @Log_print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i64 @Devices_GetNumber(i32 %13)
  store i64 %14, i64* @h_devnum, align 8
  %15 = load i64, i64* @h_devnum, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %182

18:                                               ; preds = %12
  %19 = load i8*, i8** @Devices_h_exe_path, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %134, %18
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 72
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 49
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 52
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 49
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %3, align 8
  br label %60

57:                                               ; preds = %43, %37, %31, %25
  %58 = load i64, i64* @h_devnum, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i8*, i8** %3, align 8
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %75, %60
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 59
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  br label %62

78:                                               ; preds = %72
  %79 = load i8*, i8** @atari_filename, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = icmp ne i8* %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %78
  %90 = load i8*, i8** @atari_filename, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(i8* %90, i8* %91, i32 %97)
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @IS_DIR_SEP(i8 signext %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %89
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 62, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %89
  br label %108

108:                                              ; preds = %107, %78
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = load i8*, i8** %7, align 8
  %112 = call i64 @Devices_GetAtariPath(i64 %110, i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %182

115:                                              ; preds = %108
  %116 = load i32, i32* @host_path, align 4
  %117 = load i32*, i32** @Devices_atari_h_dir, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @atari_path, align 4
  %123 = call i32 @Util_catpath(i32 %116, i32 %121, i32 %122)
  %124 = load i32, i32* @host_path, align 4
  %125 = call i32* @fopen(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %125, i32** @binf, align 8
  %126 = load i32*, i32** @binf, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %115
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %115
  br label %137

134:                                              ; preds = %128
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %3, align 8
  br label %20

137:                                              ; preds = %133, %20
  %138 = load i32*, i32** @binf, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = load i64, i64* @h_devnum, align 8
  %142 = load i8*, i8** @atari_filename, align 8
  %143 = call i64 @Devices_GetAtariPath(i64 %141, i8* %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %182

146:                                              ; preds = %140
  %147 = load i32, i32* @host_path, align 4
  %148 = load i32*, i32** @Devices_atari_h_dir, align 8
  %149 = load i64, i64* @h_devnum, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @atari_path, align 4
  %153 = call i32 @Util_catpath(i32 %147, i32 %151, i32 %152)
  %154 = load i32, i32* @host_path, align 4
  %155 = call i32* @fopen(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %155, i32** @binf, align 8
  %156 = load i32*, i32** @binf, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  store i32 170, i32* @CPU_regY, align 4
  %159 = load i32, i32* @CPU_SetN, align 4
  br label %182

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %137
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %163 = load i32*, i32** @binf, align 8
  %164 = call i32 @fread(i32* %162, i32 1, i32 2, i32* %163)
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 255
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 255
  br i1 %173, label %174, label %179

174:                                              ; preds = %170, %166, %161
  %175 = load i32*, i32** @binf, align 8
  %176 = call i32 @fclose(i32* %175)
  store i32* null, i32** @binf, align 8
  %177 = call i32 @Log_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 180, i32* @CPU_regY, align 4
  %178 = load i32, i32* @CPU_SetN, align 4
  br label %182

179:                                              ; preds = %170
  %180 = load i32, i32* %2, align 4
  %181 = call i32 @Devices_H_LoadProceed(i32 %180)
  br label %182

182:                                              ; preds = %179, %174, %158, %145, %114, %17
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i64 @Devices_GetNumber(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @IS_DIR_SEP(i8 signext) #1

declare dso_local i64 @Devices_GetAtariPath(i64, i8*) #1

declare dso_local i32 @Util_catpath(i32, i32, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Devices_H_LoadProceed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
