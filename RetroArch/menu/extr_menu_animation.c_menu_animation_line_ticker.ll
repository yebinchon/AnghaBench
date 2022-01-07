; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ticker_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_line_ticker(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  store %struct.string_list* null, %struct.string_list** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @string_is_empty(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %12
  br label %122

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i64 @malloc(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %122

43:                                               ; preds = %29
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @word_wrap(i8* %44, i8* %47, i32 %50, i32 1, i32 0)
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @string_is_empty(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %122

56:                                               ; preds = %43
  %57 = load i8*, i8** %4, align 8
  %58 = call %struct.string_list* @string_split(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %58, %struct.string_list** %5, align 8
  %59 = load %struct.string_list*, %struct.string_list** %5, align 8
  %60 = icmp ne %struct.string_list* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %122

62:                                               ; preds = %56
  %63 = load %struct.string_list*, %struct.string_list** %5, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strlcpy(i8* %73, i8* %74, i32 %77)
  store i32 1, i32* %7, align 4
  br label %122

79:                                               ; preds = %62
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %95 [
    i32 128, label %83
    i32 129, label %94
  ]

83:                                               ; preds = %79
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.string_list*, %struct.string_list** %5, align 8
  %91 = getelementptr inbounds %struct.string_list, %struct.string_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @menu_animation_line_ticker_loop(i32 %86, i32 %89, i32 %92, i64* %6)
  br label %109

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %79, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.string_list*, %struct.string_list** %5, align 8
  %106 = getelementptr inbounds %struct.string_list, %struct.string_list* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @menu_animation_line_ticker_generic(i32 %98, i32 %101, i32 %104, i32 %107, i64* %6)
  br label %109

109:                                              ; preds = %95, %83
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.string_list*, %struct.string_list** %5, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @build_line_ticker_string(i32 %112, i64 %113, %struct.string_list* %114, i8* %117, i32 %120)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* @ticker_is_active, align 4
  br label %122

122:                                              ; preds = %109, %70, %61, %55, %42, %28
  %123 = load i8*, i8** %4, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @free(i8* %126)
  store i8* null, i8** %4, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.string_list*, %struct.string_list** %5, align 8
  %130 = icmp ne %struct.string_list* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.string_list*, %struct.string_list** %5, align 8
  %133 = call i32 @string_list_free(%struct.string_list* %132)
  store %struct.string_list* null, %struct.string_list** %5, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %134
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %11
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @menu_animation_line_ticker_loop(i32, i32, i32, i64*) #1

declare dso_local i32 @menu_animation_line_ticker_generic(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @build_line_ticker_string(i32, i64, %struct.string_list*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
