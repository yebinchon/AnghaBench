; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/extr_commands.c_esp_console_cmd_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/extr_commands.c_esp_console_cmd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32* }
%struct.TYPE_12__ = type { i8*, i32, i64, i32, i32* }

@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@s_cmd_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_console_cmd_register(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = call i64 @calloc(i32 1, i32 40)
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %16, i32* %2, align 4
  br label %113

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = call i32 @free(%struct.TYPE_12__* %23)
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %25, i32* %2, align 4
  br label %113

26:                                               ; preds = %17
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @strchr(i32* %29, i8 signext 32)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = call i32 @free(%struct.TYPE_12__* %33)
  %35 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %35, i32* %2, align 4
  br label %113

36:                                               ; preds = %26
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @asprintf(i8** %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %5, align 4
  br label %80

58:                                               ; preds = %36
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %64 = call i32* @open_memstream(i8** %6, i64* %7)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @arg_print_syntax(i32* %68, i64 %71, i32* null)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @fclose(i32* %73)
  br label %75

75:                                               ; preds = %67, %63
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %58
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = call %struct.TYPE_12__* @SLIST_FIRST(i32* @s_cmd_list)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %9, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = icmp eq %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i32, i32* @next, align 4
  %97 = call i32 @SLIST_INSERT_HEAD(i32* @s_cmd_list, %struct.TYPE_12__* %95, i32 %96)
  br label %111

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %104, %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = load i32, i32* @next, align 4
  %102 = call %struct.TYPE_12__* @SLIST_NEXT(%struct.TYPE_12__* %100, i32 %101)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %10, align 8
  %103 = icmp ne %struct.TYPE_12__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %9, align 8
  br label %99

106:                                              ; preds = %99
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = load i32, i32* @next, align 4
  %110 = call i32 @SLIST_INSERT_AFTER(%struct.TYPE_12__* %107, %struct.TYPE_12__* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %94
  %112 = load i32, i32* @ESP_OK, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %32, %22, %15
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32* @strchr(i32*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32* @open_memstream(i8**, i64*) #1

declare dso_local i32 @arg_print_syntax(i32*, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.TYPE_12__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @SLIST_NEXT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
