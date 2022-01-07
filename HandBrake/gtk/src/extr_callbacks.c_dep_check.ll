; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_dep_check.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_dep_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dep_check () %s\00", align 1
@rev_map = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to find widget\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*)* @dep_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dep_check(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @g_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** @rev_map, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %197

34:                                               ; preds = %3
  %35 = load i32*, i32** @rev_map, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32* @ghb_dict_get(i32* %35, i8* %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i64 @ghb_array_len(i32* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %192, %34
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %195

46:                                               ; preds = %42
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32* @ghb_array_get(i32* %47, i32 %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32* @ghb_array_get(i32* %51, i32 0)
  %53 = call i8* @ghb_value_get_string(i32* %52)
  store i8* %53, i8** %15, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32* @GHB_WIDGET(i32 %56, i8* %57)
  store i32* %58, i32** %8, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32* @gtk_builder_get_object(i32 %61, i8* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %46
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @gtk_widget_is_sensitive(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %192

71:                                               ; preds = %66, %46
  %72 = load i32*, i32** %9, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @g_message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %191

76:                                               ; preds = %71
  store i64 0, i64* %17, align 8
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = call i32* @ghb_array_get(i32* %78, i32 2)
  %80 = call i32 @ghb_value_get_bool(i32* %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = call i32* @ghb_array_get(i32* %81, i32 3)
  %83 = call i32 @ghb_value_get_bool(i32* %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = call i32* @ghb_array_get(i32* %84, i32 1)
  %86 = call i8* @ghb_value_get_string(i32* %85)
  store i8* %86, i8** %22, align 8
  %87 = load i8*, i8** %22, align 8
  %88 = call i8** @g_strsplit(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 10)
  store i8** %88, i8*** %18, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i32*, i32** %8, align 8
  %93 = call i8* @ghb_widget_string(i32* %92)
  store i8* %93, i8** %16, align 8
  br label %100

94:                                               ; preds = %76
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = call i8* @ghb_dict_get_string_xform(i32 %97, i8* %98)
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %171, %100
  %102 = load i8**, i8*** %18, align 8
  %103 = icmp ne i8** %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i8**, i8*** %18, align 8
  %106 = load i64, i64* %17, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ false, %101 ], [ %109, %104 ]
  br i1 %111, label %112, label %174

112:                                              ; preds = %110
  %113 = load i8**, i8*** %18, align 8
  %114 = load i64, i64* %17, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 62
  br i1 %120, label %121, label %136

121:                                              ; preds = %112
  %122 = load i8**, i8*** %18, align 8
  %123 = load i64, i64* %17, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i64 @g_strtod(i8* %126, i32* null)
  store i64 %127, i64* %23, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i64 @ghb_widget_double(i32* %128)
  store i64 %129, i64* %24, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %23, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %19, align 4
  br label %174

135:                                              ; preds = %121
  br label %161

136:                                              ; preds = %112
  %137 = load i8**, i8*** %18, align 8
  %138 = load i64, i64* %17, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 60
  br i1 %144, label %145, label %160

145:                                              ; preds = %136
  %146 = load i8**, i8*** %18, align 8
  %147 = load i64, i64* %17, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i64 @g_strtod(i8* %150, i32* null)
  store i64 %151, i64* %25, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i64 @ghb_widget_double(i32* %152)
  store i64 %153, i64* %26, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %25, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %19, align 4
  br label %174

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %136
  br label %161

161:                                              ; preds = %160, %135
  %162 = load i8**, i8*** %18, align 8
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds i8*, i8** %162, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = call i64 @strcmp(i8* %165, i8* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %19, align 4
  br label %174

171:                                              ; preds = %161
  %172 = load i64, i64* %17, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %17, align 8
  br label %101

174:                                              ; preds = %169, %157, %133, %110
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %19, align 4
  %177 = xor i32 %175, %176
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i8**, i8*** %18, align 8
  %188 = call i32 @g_strfreev(i8** %187)
  %189 = load i8*, i8** %16, align 8
  %190 = call i32 @g_free(i8* %189)
  br label %191

191:                                              ; preds = %186, %74
  br label %192

192:                                              ; preds = %191, %70
  %193 = load i64, i64* %10, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %10, align 8
  br label %42

195:                                              ; preds = %42
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %32
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i8* @ghb_value_get_string(i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_builder_get_object(i32, i8*) #1

declare dso_local i32 @gtk_widget_is_sensitive(i32*) #1

declare dso_local i32 @g_message(i8*) #1

declare dso_local i32 @ghb_value_get_bool(i32*) #1

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i8* @ghb_widget_string(i32*) #1

declare dso_local i8* @ghb_dict_get_string_xform(i32, i8*) #1

declare dso_local i64 @g_strtod(i8*, i32*) #1

declare dso_local i64 @ghb_widget_double(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_strfreev(i8**) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
