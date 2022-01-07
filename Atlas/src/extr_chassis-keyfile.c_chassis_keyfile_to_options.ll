; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-keyfile.c_chassis_keyfile_to_options.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-keyfile.c_chassis_keyfile_to_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: (keyfile) the option %d can't be handled\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@G_KEY_FILE_ERROR_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_keyfile_to_options(i32* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %185

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @g_key_file_has_group(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %185

28:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %180, %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %183

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %156 [
    i32 133, label %45
    i32 129, label %45
    i32 132, label %75
    i32 128, label %75
    i32 130, label %126
    i32 131, label %141
  ]

45:                                               ; preds = %37, %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* null, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* null, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %45
  br label %162

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32* @g_key_file_get_string(i32* %59, i32* %60, i64 %63, %struct.TYPE_11__** %8)
  store i32* %64, i32** %13, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @g_strchomp(i32* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i32**
  store i32* %69, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %58
  br label %162

75:                                               ; preds = %37, %37
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* null, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to i32***
  %85 = load i32**, i32*** %84, align 8
  %86 = icmp ne i32** null, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %75
  br label %162

88:                                               ; preds = %80
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32** @g_key_file_get_string_list(i32* %89, i32* %90, i64 %93, i32* %18, %struct.TYPE_11__** %8)
  store i32** %94, i32*** %14, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %125, label %97

97:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32**, i32*** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load i32**, i32*** %14, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32* @g_strstrip(i32* %110)
  %112 = load i32**, i32*** %14, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  store i32* %111, i32** %115, align 8
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %98

119:                                              ; preds = %98
  %120 = load i32**, i32*** %14, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i32***
  store i32** %120, i32*** %124, align 8
  br label %125

125:                                              ; preds = %119, %88
  br label %162

126:                                              ; preds = %37
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @g_key_file_get_boolean(i32* %127, i32* %128, i64 %131, %struct.TYPE_11__** %8)
  store i32 %132, i32* %15, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = icmp ne %struct.TYPE_11__* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %126
  br label %162

141:                                              ; preds = %37
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @g_key_file_get_integer(i32* %142, i32* %143, i64 %146, %struct.TYPE_11__** %8)
  store i32 %147, i32* %16, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %141
  br label %162

156:                                              ; preds = %37
  %157 = load i32, i32* @G_STRLOC, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @g_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %156, %155, %140, %125, %87, %74, %57
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = icmp ne %struct.TYPE_11__* %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @G_KEY_FILE_ERROR_KEY_NOT_FOUND, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  store i32 -1, i32* %9, align 4
  br label %176

176:                                              ; preds = %171, %165
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %178 = call i32 @g_error_free(%struct.TYPE_11__* %177)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  br label %179

179:                                              ; preds = %176, %162
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %29

183:                                              ; preds = %29
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %27, %21
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @g_key_file_has_group(i32*, i32*) #1

declare dso_local i32* @g_key_file_get_string(i32*, i32*, i64, %struct.TYPE_11__**) #1

declare dso_local i32* @g_strchomp(i32*) #1

declare dso_local i32** @g_key_file_get_string_list(i32*, i32*, i64, i32*, %struct.TYPE_11__**) #1

declare dso_local i32* @g_strstrip(i32*) #1

declare dso_local i32 @g_key_file_get_boolean(i32*, i32*, i64, %struct.TYPE_11__**) #1

declare dso_local i32 @g_key_file_get_integer(i32*, i32*, i64, %struct.TYPE_11__**) #1

declare dso_local i32 @g_error(i8*, i32, i32) #1

declare dso_local i32 @g_message(i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
