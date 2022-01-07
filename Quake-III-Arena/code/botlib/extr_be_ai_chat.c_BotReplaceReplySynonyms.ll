; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotReplaceReplySynonyms.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotReplaceReplySynonyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@synonyms = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotReplaceReplySynonyms(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %154, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %155

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 32
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %16

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %155

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @synonyms, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %8, align 8
  br label %38

38:                                               ; preds = %129, %36
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %133

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %129

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %9, align 8
  br label %55

55:                                               ; preds = %120, %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %124

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @qfalse, align 4
  %67 = call i8* @StringContainsWord(i8* %62, i8* %65, i32 %66)
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %58
  br label %120

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %7, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @qfalse, align 4
  %84 = call i8* @StringContainsWord(i8* %81, i8* %82, i32 %83)
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %75
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %120

92:                                               ; preds = %87, %75
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = load i8*, i8** %5, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  %112 = call i32 @strlen(i8* %111)
  %113 = add nsw i32 %112, 1
  %114 = call i32 @memmove(i8* %97, i8* %104, i32 %113)
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i32 @Com_Memcpy(i8* %115, i8* %116, i32 %118)
  br label %124

120:                                              ; preds = %91, %74
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %9, align 8
  br label %55

124:                                              ; preds = %92, %55
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %126 = icmp ne %struct.TYPE_7__* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %133

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %48
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %8, align 8
  br label %38

133:                                              ; preds = %127, %38
  br label %134

134:                                              ; preds = %146, %133
  %135 = load i8*, i8** %5, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i8*, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sgt i32 %142, 32
  br label %144

144:                                              ; preds = %139, %134
  %145 = phi i1 [ false, %134 ], [ %143, %139 ]
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %5, align 8
  br label %134

149:                                              ; preds = %144
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  br label %155

154:                                              ; preds = %149
  br label %11

155:                                              ; preds = %153, %35, %11
  ret void
}

declare dso_local i8* @StringContainsWord(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
