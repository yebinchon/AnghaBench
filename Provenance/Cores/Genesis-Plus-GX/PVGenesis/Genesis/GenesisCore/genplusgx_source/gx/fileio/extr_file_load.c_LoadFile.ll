; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_LoadFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@deviceType = common dso_local global i32 0, align 4
@TYPE_RECENT = common dso_local global i32 0, align 4
@history = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@fileDir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@filelist = common dso_local global %struct.TYPE_13__* null, align 8
@rootdir = common dso_local global i8** null, align 8
@TYPE_DVD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Loading game...\00", align 1
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@cdd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CD_OPEN = common dso_local global i64 0, align 8
@cdc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@scd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@NO_DISC = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@romtype = common dso_local global i32 0, align 4
@SYSTEM_SMS = common dso_local global i32 0, align 4
@rom_filename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ms/%s\00", align 1
@SYSTEM_GG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"gg/%s\00", align 1
@SYSTEM_SG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"sg/%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cd/%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"md/%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Unable to load game\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @deviceType, align 4
  %18 = load i32, i32* @TYPE_RECENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @history, i32 0, i32 0), align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %29

27:                                               ; preds = %1
  %28 = load i8*, i8** @fileDir, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i8* [ %26, %20 ], [ %28, %27 ]
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i8**, i8*** @rootdir, align 8
  %41 = load i64, i64* @TYPE_DVD, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** @rootdir, align 8
  %45 = load i64, i64* @TYPE_DVD, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @strncmp(i8* %39, i8* %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %29
  %52 = call i64 @stat(i8* %16, %struct.stat* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 (...) @MountDVD()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %29
  %61 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %62 = load i32, i32* @system_hw, align 4
  %63 = load i32, i32* @SYSTEM_MCD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %67 = load i64, i64* @CD_OPEN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cdc, i32 0, i32 0), align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @cdd_load(i8* %16, i8* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0, i32 0), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cdc, i32 0, i32 0), align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @getrominfo(i8* %79)
  br label %81

81:                                               ; preds = %77, %75
  br label %82

82:                                               ; preds = %81, %65, %60
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @NO_DISC, align 8
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %87 = call i32 @load_rom(i8* %16)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %4, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %209

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %6, align 4
  br label %193

95:                                               ; preds = %91
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 4
  %98 = call i32 @slot_autosave(i32 %96, i32 %97)
  %99 = load i32, i32* @romtype, align 4
  %100 = load i32, i32* @SYSTEM_SMS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  store i32 2, i32* %6, align 4
  %104 = load i8*, i8** @rom_filename, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  br label %164

112:                                              ; preds = %95
  %113 = load i32, i32* @romtype, align 4
  %114 = load i32, i32* @SYSTEM_GG, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  store i32 3, i32* %6, align 4
  %118 = load i8*, i8** @rom_filename, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  br label %163

126:                                              ; preds = %112
  %127 = load i32, i32* @romtype, align 4
  %128 = load i32, i32* @SYSTEM_SG, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  store i32 4, i32* %6, align 4
  %131 = load i8*, i8** @rom_filename, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %137)
  br label %162

139:                                              ; preds = %126
  %140 = load i32, i32* @romtype, align 4
  %141 = load i32, i32* @SYSTEM_MCD, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  store i32 1, i32* %6, align 4
  %144 = load i8*, i8** @rom_filename, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %150)
  br label %161

152:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  %153 = load i8*, i8** @rom_filename, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %152, %143
  br label %162

162:                                              ; preds = %161, %130
  br label %163

163:                                              ; preds = %162, %117
  br label %164

164:                                              ; preds = %163, %103
  %165 = load i8*, i8** @rom_filename, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %181, %164
  %169 = load i32, i32* %12, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i8*, i8** @rom_filename, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 46
  br label %179

179:                                              ; preds = %171, %168
  %180 = phi i1 [ false, %168 ], [ %178, %171 ]
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %12, align 4
  br label %168

184:                                              ; preds = %179
  %185 = load i32, i32* %12, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i8*, i8** @rom_filename, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8 0, i8* %191, align 1
  br label %192

192:                                              ; preds = %187, %184
  br label %193

193:                                              ; preds = %192, %94
  %194 = load i8*, i8** %9, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @history_add_file(i8* %194, i8* %200, i32 %201)
  %203 = load i32, i32* @deviceType, align 4
  %204 = load i32, i32* @TYPE_RECENT, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  store i32 -1, i32* @deviceType, align 4
  br label %207

207:                                              ; preds = %206, %193
  %208 = call i32 (...) @GUI_MsgBoxClose()
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

209:                                              ; preds = %88
  %210 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %211

211:                                              ; preds = %209, %207, %57
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @MountDVD(...) #2

declare dso_local i32 @GUI_MsgBoxOpen(i8*, i8*, i32) #2

declare dso_local i32 @cdd_load(i8*, i8*) #2

declare dso_local i32 @getrominfo(i8*) #2

declare dso_local i32 @load_rom(i8*) #2

declare dso_local i32 @slot_autosave(i32, i32) #2

declare dso_local i32 @history_add_file(i8*, i8*, i32) #2

declare dso_local i32 @GUI_MsgBoxClose(...) #2

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
