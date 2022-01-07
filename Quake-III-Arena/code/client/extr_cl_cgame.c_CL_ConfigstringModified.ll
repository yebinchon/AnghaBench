; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_ConfigstringModified.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_ConfigstringModified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32*, i32 }

@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"configstring > MAX_CONFIGSTRINGS\00", align 1
@cl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_GAMESTATE_CHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MAX_GAMESTATE_CHARS exceeded\00", align 1
@CS_SYSTEMINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ConfigstringModified() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @Cmd_Argv(i32 1)
  %9 = call i32 @atoi(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %0
  %17 = load i32, i32* @ERR_DROP, align 4
  %18 = call i32 @Com_Error(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %12
  %20 = call i8* @Cmd_ArgsFrom(i32 2)
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 0), align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 1), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %21, i64 %27
  store i8* %28, i8** %1, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %103

34:                                               ; preds = %19
  %35 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.TYPE_5__* @cl to i8*), i64 24, i1 false)
  %36 = call i32 @Com_Memset(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0), i32 0, i32 24)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %94, %34
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %2, align 8
  store i8* %46, i8** %5, align 8
  br label %58

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %49, i64 %56
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %47, %45
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %94

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strlen(i8* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @MAX_GAMESTATE_CHARS, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @ERR_DROP, align 4
  %75 = call i32 @Com_Error(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 1), align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 0), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @Com_Memcpy(i8* %85, i8* %86, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  br label %94

94:                                               ; preds = %76, %63
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %37

97:                                               ; preds = %37
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @CS_SYSTEMINFO, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 (...) @CL_SystemInfoChanged()
  br label %103

103:                                              ; preds = %33, %101, %97
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i8* @Cmd_ArgsFrom(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CL_SystemInfoChanged(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
