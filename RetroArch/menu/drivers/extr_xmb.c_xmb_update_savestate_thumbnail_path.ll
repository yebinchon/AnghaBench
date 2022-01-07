; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_savestate_thumbnail_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_savestate_thumbnail_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"state_slot\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"loadstate\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"savestate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xmb_update_savestate_thumbnail_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_update_savestate_thumbnail_path(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %137

18:                                               ; preds = %2
  %19 = call i32 @menu_entry_init(%struct.TYPE_17__* %5)
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @menu_entry_get(%struct.TYPE_17__* %5, i32 0, i32 %24, i32* null, i32 1)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @string_is_empty(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %31, %18
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @string_is_empty(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %137, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @string_is_equal(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @string_is_equal(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @string_is_equal(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %136

64:                                               ; preds = %59, %54, %49
  store i64 8204, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @malloc(i64 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %9, align 8
  %68 = call %struct.TYPE_18__* (...) @global_get_ptr()
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %70, align 1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %110

73:                                               ; preds = %64
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @snprintf(i8* %81, i64 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %86, i32 %87)
  br label %109

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @fill_pathname_join_delim(i8* %93, i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8 signext 46, i64 %98)
  br label %108

100:                                              ; preds = %89
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @strlcpy(i8* %101, i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %100, %92
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @strlcat(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = call i64 @path_is_valid(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %110
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @string_is_empty(i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %123, %117
  %129 = load i8*, i8** %9, align 8
  %130 = call i8* @strdup(i8* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %110
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @free(i8* %134)
  br label %136

136:                                              ; preds = %133, %59, %43
  br label %137

137:                                              ; preds = %17, %136, %36
  ret void
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_17__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_17__*, i32, i32, i32*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local %struct.TYPE_18__* @global_get_ptr(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
