; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Get.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i8*, i32, i32, i32, i8* }

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cvar_Get: NULL parameter\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid cvar name string: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BADNAME\00", align 1
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Warning: cvar \22%s\22 given initial values: \22%s\22 and \22%s\22\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@cvar_numIndexes = common dso_local global i64 0, align 8
@MAX_CVARS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"MAX_CVARS\00", align 1
@cvar_indexes = common dso_local global %struct.TYPE_7__* null, align 8
@cvar_vars = common dso_local global %struct.TYPE_7__* null, align 8
@hashTable = common dso_local global %struct.TYPE_7__** null, align 8
@CVAR_ROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Cvar_Get(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @ERR_FATAL, align 4
  %18 = call i32 @Com_Error(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @Cvar_ValidateString(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_7__* @Cvar_FindVar(i8* %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %128

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CVAR_USER_CREATED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CVAR_USER_CREATED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i32, i32* @CVAR_USER_CREATED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @Z_Free(i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @CopyString(i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @cvar_modifiedFlags, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @cvar_modifiedFlags, align 4
  br label %67

67:                                               ; preds = %49, %43, %38, %31
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @Z_Free(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @CopyString(i8* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %109

88:                                               ; preds = %67
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @strcmp(i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %102, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %101, %94, %88
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %10, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i8* null, i8** %119, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* @qtrue, align 4
  %123 = call i32 @Cvar_Set2(i8* %120, i8* %121, i32 %122)
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @Z_Free(i8* %124)
  br label %126

126:                                              ; preds = %114, %109
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %4, align 8
  br label %190

128:                                              ; preds = %26
  %129 = load i64, i64* @cvar_numIndexes, align 8
  %130 = load i64, i64* @MAX_CVARS, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @ERR_FATAL, align 4
  %134 = call i32 @Com_Error(i32 %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvar_indexes, align 8
  %137 = load i64, i64* @cvar_numIndexes, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %137
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %8, align 8
  %139 = load i64, i64* @cvar_numIndexes, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* @cvar_numIndexes, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i8* @CopyString(i8* %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 10
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i8* @CopyString(i8* %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @qtrue, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  store i32 1, i32* %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @atof(i8* %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @atoi(i8* %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i8* @CopyString(i8* %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cvar_vars, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %172, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %173, %struct.TYPE_7__** @cvar_vars, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i8*, i8** %5, align 8
  %178 = call i64 @generateHashValue(i8* %177)
  store i64 %178, i64* %9, align 8
  %179 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @hashTable, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %179, i64 %180
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %186 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @hashTable, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %186, i64 %187
  store %struct.TYPE_7__* %185, %struct.TYPE_7__** %188, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** %4, align 8
  br label %190

190:                                              ; preds = %135, %126
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %191
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Cvar_ValidateString(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @Cvar_FindVar(i8*) #1

declare dso_local i32 @Z_Free(i8*) #1

declare dso_local i8* @CopyString(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @Cvar_Set2(i8*, i8*, i32) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @generateHashValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
