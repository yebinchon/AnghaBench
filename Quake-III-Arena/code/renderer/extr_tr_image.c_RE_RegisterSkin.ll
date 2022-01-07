; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_RE_RegisterSkin.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_RE_RegisterSkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, i32, i8*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32 (i8*)*, %struct.TYPE_8__* (i32, i32)*, i32 (i8*, i8**)*, i32 (i32, i8*, i8*)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Empty name passed to RE_RegisterSkin\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Skin name exceeds MAX_QPATH\0A\00", align 1
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAX_SKINS = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"WARNING: RE_RegisterSkin( '%s' ) MAX_SKINS hit\0A\00", align 1
@h_low = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c".skin\00", align 1
@LIGHTMAP_NONE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"tag_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RE_RegisterSkin(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %1
  %25 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i32, i32* @MAX_QPATH, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

33:                                               ; preds = %26
  store i64 1, i64* %4, align 8
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @Q_stricmp(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

55:                                               ; preds = %49
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %34

61:                                               ; preds = %34
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %63 = load i64, i64* @MAX_SKINS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 3), align 8
  %67 = load i32, i32* @PRINT_WARNING, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 %66(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

70:                                               ; preds = %61
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %73 = load %struct.TYPE_8__* (i32, i32)*, %struct.TYPE_8__* (i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %74 = load i32, i32* @h_low, align 4
  %75 = call %struct.TYPE_8__* %73(i32 32, i32 %74)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %77, i64 %78
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @Q_strncpyz(i8* %82, i8* %83, i32 8)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = call i32 (...) @R_SyncRenderThread()
  %88 = load i8*, i8** %3, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 -5
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %70
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_8__* (i32, i32)*, %struct.TYPE_8__* (i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %100 = load i32, i32* @h_low, align 4
  %101 = call %struct.TYPE_8__* %99(i32 8, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 0
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %105, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* @LIGHTMAP_NONE, align 4
  %108 = load i32, i32* @qtrue, align 4
  %109 = call i8* @R_FindShader(i8* %106, i32 %107, i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %112, i64 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i8* %109, i8** %115, align 8
  %116 = load i64, i64* %4, align 8
  store i64 %116, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

117:                                              ; preds = %70
  %118 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 2), align 8
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 %118(i8* %119, i8** %7)
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

124:                                              ; preds = %117
  %125 = load i8*, i8** %7, align 8
  store i8* %125, i8** %8, align 8
  br label %126

126:                                              ; preds = %160, %159, %124
  %127 = load i8*, i8** %8, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi i1 [ false, %126 ], [ %133, %129 ]
  br i1 %135, label %136, label %187

136:                                              ; preds = %134
  %137 = call i8* @CommaParse(i8** %8)
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = trunc i64 %14 to i32
  %140 = call i32 @Q_strncpyz(i8* %16, i8* %138, i32 %139)
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %187

146:                                              ; preds = %136
  %147 = call i32 @Q_strlwr(i8* %16)
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 44
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  br label %155

155:                                              ; preds = %152, %146
  %156 = load i8*, i8** %9, align 8
  %157 = call i64 @strstr(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %126

160:                                              ; preds = %155
  %161 = call i8* @CommaParse(i8** %8)
  store i8* %161, i8** %9, align 8
  %162 = load %struct.TYPE_8__* (i32, i32)*, %struct.TYPE_8__* (i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %163 = load i32, i32* @h_low, align 4
  %164 = call %struct.TYPE_8__* %162(i32 32, i32 %163)
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %166, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %167, i64 %171
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %172, align 8
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %6, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @Q_strncpyz(i8* %175, i8* %16, i32 8)
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* @LIGHTMAP_NONE, align 4
  %179 = load i32, i32* @qtrue, align 4
  %180 = call i8* @R_FindShader(i8* %177, i32 %178, i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %126

187:                                              ; preds = %145, %134
  %188 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 %188(i8* %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  store i64 0, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

196:                                              ; preds = %187
  %197 = load i64, i64* %4, align 8
  store i64 %197, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %198

198:                                              ; preds = %196, %195, %123, %96, %65, %55, %54, %31, %24
  %199 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i64, i64* %2, align 8
  ret i64 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @R_SyncRenderThread(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @R_FindShader(i8*, i32, i32) #2

declare dso_local i8* @CommaParse(i8**) #2

declare dso_local i32 @Q_strlwr(i8*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
