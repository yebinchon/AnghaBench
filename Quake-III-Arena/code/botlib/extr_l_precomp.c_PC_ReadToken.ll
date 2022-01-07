; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ReadToken.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ReadToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i8* }

@qfalse = common dso_local global i32 0, align 4
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@TT_STRING = common dso_local global i64 0, align 8
@MAX_TOKEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"string longer than MAX_TOKEN %d\0A\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_ReadToken(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  br label %8

8:                                                ; preds = %2, %34, %54, %115, %140
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = call i32 @PC_ReadSourceToken(%struct.TYPE_18__* %9, %struct.TYPE_17__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %3, align 4
  br label %148

15:                                               ; preds = %8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TT_PUNCTUATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = call i32 @PC_ReadDirective(%struct.TYPE_18__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %3, align 4
  br label %148

34:                                               ; preds = %28
  br label %8

35:                                               ; preds = %21, %15
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TT_PUNCTUATION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 36
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = call i32 @PC_ReadDollarDirective(%struct.TYPE_18__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @qfalse, align 4
  store i32 %53, i32* %3, align 4
  br label %148

54:                                               ; preds = %48
  br label %8

55:                                               ; preds = %41, %35
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TT_STRING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %110

61:                                               ; preds = %55
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = call i32 @PC_ReadToken(%struct.TYPE_18__* %62, %struct.TYPE_17__* %7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TT_STRING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %65
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = sub nsw i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %73, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i64 @strlen(i8* %86)
  %88 = add nsw i64 %83, %87
  %89 = add nsw i64 %88, 1
  %90 = load i64, i64* @MAX_TOKEN, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %70
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = load i64, i64* @MAX_TOKEN, align 8
  %95 = call i32 @SourceError(%struct.TYPE_18__* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @qfalse, align 4
  store i32 %96, i32* %3, align 4
  br label %148

97:                                               ; preds = %70
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 @strcat(i8* %100, i8* %103)
  br label %108

105:                                              ; preds = %65
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = call i32 @PC_UnreadToken(%struct.TYPE_18__* %106, %struct.TYPE_17__* %7)
  br label %108

108:                                              ; preds = %105, %97
  br label %109

109:                                              ; preds = %108, %61
  br label %110

110:                                              ; preds = %109, %55
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %8

116:                                              ; preds = %110
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TT_NAME, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32* @PC_FindDefine(i32 %125, i8* %128)
  store i32* %129, i32** %6, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @PC_ExpandDefineIntoSource(%struct.TYPE_18__* %133, %struct.TYPE_17__* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @qfalse, align 4
  store i32 %139, i32* %3, align 4
  br label %148

140:                                              ; preds = %132
  br label %8

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141, %116
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = call i32 @Com_Memcpy(i32* %144, %struct.TYPE_17__* %145, i32 16)
  %147 = load i32, i32* @qtrue, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %142, %138, %92, %52, %32, %13
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @PC_ReadSourceToken(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @PC_ReadDirective(%struct.TYPE_18__*) #1

declare dso_local i32 @PC_ReadDollarDirective(%struct.TYPE_18__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SourceError(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @PC_UnreadToken(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32* @PC_FindDefine(i32, i8*) #1

declare dso_local i32 @PC_ExpandDefineIntoSource(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @Com_Memcpy(i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
