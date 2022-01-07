; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RegisterClientSkin.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RegisterClientSkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"models/players/%s/%s/lower_%s.skin\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"models/players/%s/lower_%s.skin\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"models/players/characters/%s/%s/lower_%s.skin\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/lower_%s.skin\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"models/players/%s/%s/upper_%s.skin\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"models/players/%s/upper_%s.skin\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"models/players/characters/%s/%s/upper_%s.skin\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/upper_%s.skin\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"skin\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*)* @UI_RegisterClientSkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_RegisterClientSkin(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = mul nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = trunc i64 %19 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i8* %33)
  br label %40

35:                                               ; preds = %24, %6
  %36 = trunc i64 %19 to i32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = call i8* @trap_R_RegisterSkin(i8* %21)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = trunc i64 %19 to i32
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %59, i8* %60)
  br label %67

62:                                               ; preds = %51, %48
  %63 = trunc i64 %19 to i32
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = call i8* @trap_R_RegisterSkin(i8* %21)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %40
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8*, i8** %13, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = trunc i64 %19 to i32
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %81, i8* %82, i8* %83)
  br label %90

85:                                               ; preds = %74, %71
  %86 = trunc i64 %19 to i32
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %79
  %91 = call i8* @trap_R_RegisterSkin(i8* %21)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %121, label %98

98:                                               ; preds = %90
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = trunc i64 %19 to i32
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %108, i8* %109, i8* %110)
  br label %117

112:                                              ; preds = %101, %98
  %113 = trunc i64 %19 to i32
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = call i8* @trap_R_RegisterSkin(i8* %21)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %90
  %122 = trunc i64 %19 to i32
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i64 @UI_FindClientHeadFile(i8* %21, i32 %122, i8* %123, i8* %124, i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = call i8* @trap_R_RegisterSkin(i8* %21)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142, %137, %132
  %148 = load i32, i32* @qfalse, align 4
  store i32 %148, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @qtrue, align 4
  store i32 %150, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterSkin(i8*) #2

declare dso_local i64 @UI_FindClientHeadFile(i8*, i32, i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
