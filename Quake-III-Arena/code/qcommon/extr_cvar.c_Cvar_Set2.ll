; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Set2.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32*, i32, i32, i32, i8*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Cvar_Set2: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid cvar name string: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BADNAME\00", align 1
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s is read only.\0A\00", align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%s is write protected.\0A\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"%s will be changed upon restarting.\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@CVAR_CHEAT = common dso_local global i32 0, align 4
@cvar_cheats = common dso_local global %struct.TYPE_7__* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"%s is cheat protected.\0A\00", align 1
@var_value = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @Cvar_Set2(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @Cvar_ValidateString(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.TYPE_6__* @Cvar_FindVar(i8* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %206

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @CVAR_USER_CREATED, align 4
  %34 = call %struct.TYPE_6__* @Cvar_Get(i8* %31, i8* %32, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %4, align 8
  br label %206

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.TYPE_6__* @Cvar_Get(i8* %36, i8* %37, i32 0)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %4, align 8
  br label %206

39:                                               ; preds = %18
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @strcmp(i8* %47, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %4, align 8
  br label %206

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @cvar_modifiedFlags, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @cvar_modifiedFlags, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %154, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CVAR_ROM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %4, align 8
  br label %206

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CVAR_INIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %4, align 8
  br label %206

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CVAR_LATCH, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 7
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @strcmp(i8* %98, i32* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %4, align 8
  br label %206

106:                                              ; preds = %97
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @Z_Free(i32* %109)
  br label %121

111:                                              ; preds = %92
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @strcmp(i8* %112, i32* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %4, align 8
  br label %206

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %106
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  %124 = load i8*, i8** %6, align 8
  %125 = call i8* @CopyString(i8* %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  store i32* %126, i32** %128, align 8
  %129 = load i8*, i8** @qtrue, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %4, align 8
  br label %206

137:                                              ; preds = %85
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CVAR_CHEAT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvar_cheats, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %4, align 8
  br label %206

153:                                              ; preds = %144, %137
  br label %167

154:                                              ; preds = %55
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @Z_Free(i32* %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 7
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %159, %154
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i8*, i8** %6, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i64 @strcmp(i8* %168, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %175, %struct.TYPE_6__** %4, align 8
  br label %206

176:                                              ; preds = %167
  %177 = load i8*, i8** @qtrue, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @Z_Free(i32* %186)
  %188 = load i8*, i8** %6, align 8
  %189 = call i8* @CopyString(i8* %188)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @atof(i32* %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @atoi(i32* %201)
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %205, %struct.TYPE_6__** %4, align 8
  br label %206

206:                                              ; preds = %176, %174, %149, %121, %118, %104, %81, %70, %53, %35, %30, %26
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %207
}

declare dso_local i32 @Com_DPrintf(i8*, i8*, i8*) #1

declare dso_local i32 @Cvar_ValidateString(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @Cvar_FindVar(i8*) #1

declare dso_local %struct.TYPE_6__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @Z_Free(i32*) #1

declare dso_local i8* @CopyString(i8*) #1

declare dso_local i32 @atof(i32*) #1

declare dso_local i32 @atoi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
