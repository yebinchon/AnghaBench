; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_wifi_driver_ctl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_wifi_driver_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32*)*, i32* (...)*, i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i64, i32 }

@wifi_driver_active = common dso_local global i32 0, align 4
@wifi_driver = common dso_local global %struct.TYPE_12__* null, align 8
@wifi_data = common dso_local global i32* null, align 8
@configuration_settings = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"wifi_driver\00", align 1
@RARCH_DRIVER_CTL_FIND_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't find any wifi driver named \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Available wifi drivers are:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@wifi_drivers = common dso_local global %struct.TYPE_15__** null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Going to default to first wifi driver...\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"find_wifi_driver()\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Failed to initialize wifi driver. Will continue without wifi.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_driver_ctl(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %153 [
    i32 136, label %12
    i32 132, label %13
    i32 135, label %14
    i32 128, label %70
    i32 133, label %71
    i32 137, label %73
    i32 129, label %92
    i32 130, label %110
    i32 131, label %136
    i32 134, label %137
  ]

12:                                               ; preds = %2
  store i32 0, i32* @wifi_driver_active, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @wifi_driver, align 8
  store i32* null, i32** @wifi_data, align 8
  br label %154

13:                                               ; preds = %2
  store i32 1, i32* @wifi_driver_active, align 4
  br label %154

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configuration_settings, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @RARCH_DRIVER_CTL_FIND_INDEX, align 4
  %23 = call i32 @driver_ctl(i32 %22, %struct.TYPE_14__* %7)
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @wifi_driver_find_handle(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** @wifi_driver, align 8
  br label %69

33:                                               ; preds = %14
  %34 = call i32 (...) @verbosity_is_enabled()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @RARCH_LOG_OUTPUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %56, %36
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @wifi_driver_find_handle(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @wifi_drivers, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %48, i64 %50
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @RARCH_LOG_OUTPUT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %43

59:                                               ; preds = %43
  %60 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %33
  %62 = call i64 @wifi_driver_find_handle(i32 0)
  %63 = inttoptr i64 %62 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** @wifi_driver, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 @retroarch_fail(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %29
  br label %154

70:                                               ; preds = %2
  store i32 0, i32* @wifi_driver_active, align 4
  br label %154

71:                                               ; preds = %2
  %72 = load i32, i32* @wifi_driver_active, align 4
  store i32 %72, i32* %3, align 4
  br label %155

73:                                               ; preds = %2
  %74 = load i32*, i32** @wifi_data, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32 (i32*)*, i32 (i32*)** %81, align 8
  %83 = icmp ne i32 (i32*)* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32 (i32*)*, i32 (i32*)** %86, align 8
  %88 = load i32*, i32** @wifi_data, align 8
  %89 = call i32 %87(i32* %88)
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %76, %73
  store i32* null, i32** @wifi_data, align 8
  br label %154

92:                                               ; preds = %2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32 (i32*)*, i32 (i32*)** %97, align 8
  %99 = icmp ne i32 (i32*)* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i32*, i32** @wifi_data, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32 (i32*)*, i32 (i32*)** %105, align 8
  %107 = load i32*, i32** @wifi_data, align 8
  %108 = call i32 %106(i32* %107)
  br label %109

109:                                              ; preds = %103, %100, %95, %92
  br label %154

110:                                              ; preds = %2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load i32*, i32** @wifi_data, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32 (i32*)*, i32 (i32*)** %118, align 8
  %120 = icmp ne i32 (i32*)* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configuration_settings, align 8
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %10, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32 (i32*)*, i32 (i32*)** %130, align 8
  %132 = load i32*, i32** @wifi_data, align 8
  %133 = call i32 %131(i32* %132)
  store i32 %133, i32* %3, align 4
  br label %155

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %116, %113, %110
  store i32 0, i32* %3, align 4
  br label %155

136:                                              ; preds = %2
  br label %154

137:                                              ; preds = %2
  %138 = load i32*, i32** @wifi_data, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %155

141:                                              ; preds = %137
  %142 = call i32 @wifi_driver_ctl(i32 135, i8* null)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wifi_driver, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32* (...)*, i32* (...)** %144, align 8
  %146 = call i32* (...) %145()
  store i32* %146, i32** @wifi_data, align 8
  %147 = load i32*, i32** @wifi_data, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %141
  %150 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %151 = call i32 @wifi_driver_ctl(i32 128, i8* null)
  br label %152

152:                                              ; preds = %149, %141
  br label %154

153:                                              ; preds = %2
  br label %154

154:                                              ; preds = %153, %152, %136, %109, %91, %70, %69, %13, %12
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %140, %135, %128, %71
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @driver_ctl(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @wifi_driver_find_handle(i32) #1

declare dso_local i32 @verbosity_is_enabled(...) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @RARCH_LOG_OUTPUT(i8*, ...) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @retroarch_fail(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
