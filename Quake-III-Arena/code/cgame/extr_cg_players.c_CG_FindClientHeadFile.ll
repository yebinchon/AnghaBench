; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_FindClientHeadFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_FindClientHeadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"heads/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"models/players/%s%s/%s/%s%s_%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"models/players/%s%s/%s/%s_%s.%s\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"models/players/%s%s/%s%s_%s.%s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"models/players/%s%s/%s_%s.%s\00", align 1
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*)* @CG_FindClientHeadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_FindClientHeadFile(i8* %0, i32 %1, %struct.TYPE_4__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %22 = load i64, i64* @GT_TEAM, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 128, label %28
  ]

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %30

30:                                               ; preds = %29, %28
  br label %32

31:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  br label %42

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %175
  store i32 0, i32* %20, align 4
  br label %44

44:                                               ; preds = %166, %43
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %169

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i8*, i8** %19, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %62, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67)
  br label %79

69:                                               ; preds = %53, %50, %47
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i8*, i8** %19, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %73, i8* %74, i8* %75, i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %69, %58
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @CG_FileExists(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %9, align 4
  br label %178

85:                                               ; preds = %79
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %87 = load i64, i64* @GT_TEAM, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %85
  %90 = load i32, i32* %20, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %101, i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %103, i8* %104, i8* %105, i8* %106, i8* %107, i8* %108)
  br label %119

110:                                              ; preds = %95, %92, %89
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %19, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %113, i8* %114, i8* %115, i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %110, %100
  br label %151

120:                                              ; preds = %85
  %121 = load i32, i32* %20, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load i8*, i8** %13, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %132, i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %134, i8* %135, i8* %136, i8* %137, i8* %138, i8* %139)
  br label %150

141:                                              ; preds = %126, %123, %120
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i8*, i8** %19, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %142, i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %144, i8* %145, i8* %146, i8* %147, i8* %148)
  br label %150

150:                                              ; preds = %141, %131
  br label %151

151:                                              ; preds = %150, %119
  %152 = load i8*, i8** %10, align 8
  %153 = call i64 @CG_FileExists(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @qtrue, align 4
  store i32 %156, i32* %9, align 4
  br label %178

157:                                              ; preds = %151
  %158 = load i8*, i8** %13, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** %13, align 8
  %162 = load i8, i8* %161, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160, %157
  br label %169

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %44

169:                                              ; preds = %164, %44
  %170 = load i8*, i8** %19, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %176

175:                                              ; preds = %169
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %43

176:                                              ; preds = %174
  %177 = load i32, i32* @qfalse, align 4
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %176, %155, %83
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @CG_FileExists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
