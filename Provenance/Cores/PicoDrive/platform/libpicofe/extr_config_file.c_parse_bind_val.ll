; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_parse_bind_val.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_config_file.c_parse_bind_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@IN_BINDTYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"player\00", align 1
@IN_BINDTYPE_PLAYER12 = common dso_local global i32 0, align 4
@me_ctrl_actions = common dso_local global %struct.TYPE_3__* null, align 8
@emuctrl_actions = common dso_local global %struct.TYPE_4__* null, align 8
@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parse_bind_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bind_val(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @IN_BINDTYPE_NONE, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 6
  %24 = call i32 @atoi(i8* %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %107

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 16, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* @IN_BINDTYPE_PLAYER12, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %68, %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i64 @strncasecmp(i8* %50, i8* %52, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @me_ctrl_actions, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %107

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %36

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71, %17
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %103, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %106

81:                                               ; preds = %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i64 @strncasecmp(i8* %87, i8* %88, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %81
  %94 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emuctrl_actions, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %73

106:                                              ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %93, %58, %28, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
