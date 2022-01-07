; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_parse_option.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.retro_core_option_definition = type { i8*, i8*, i8*, i8*, %struct.retro_core_option_value* }
%struct.retro_core_option_value = type { i8*, i8* }
%union.string_list_elem_attr = type { i32 }
%struct.core_option = type { i32, i64, i64, %struct.TYPE_7__*, i8*, %struct.TYPE_7__*, i8*, i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, %struct.retro_core_option_definition*, i32*)* @core_option_manager_parse_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_option_manager_parse_option(%struct.TYPE_6__* %0, i64 %1, %struct.retro_core_option_definition* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.retro_core_option_definition*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.string_list_elem_attr, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.core_option*, align 8
  %15 = alloca %struct.retro_core_option_value*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.retro_core_option_definition* %2, %struct.retro_core_option_definition** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = bitcast i32* %20 to %struct.core_option*
  store %struct.core_option* %21, %struct.core_option** %14, align 8
  %22 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %23 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %22, i32 0, i32 4
  %24 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %23, align 8
  store %struct.retro_core_option_value* %24, %struct.retro_core_option_value** %15, align 8
  %25 = load %struct.core_option*, %struct.core_option** %14, align 8
  %26 = getelementptr inbounds %struct.core_option, %struct.core_option* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %28 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @string_is_empty(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %4
  %33 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %34 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strdup(i8* %35)
  %37 = load %struct.core_option*, %struct.core_option** %14, align 8
  %38 = getelementptr inbounds %struct.core_option, %struct.core_option* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %4
  %40 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %41 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %47 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strdup(i8* %48)
  %50 = load %struct.core_option*, %struct.core_option** %14, align 8
  %51 = getelementptr inbounds %struct.core_option, %struct.core_option* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %39
  %53 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %54 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @string_is_empty(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %60 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strdup(i8* %61)
  %63 = load %struct.core_option*, %struct.core_option** %14, align 8
  %64 = getelementptr inbounds %struct.core_option, %struct.core_option* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65, %78
  %67 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %67, i64 %68
  %70 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @string_is_empty(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %78

77:                                               ; preds = %66
  br label %79

78:                                               ; preds = %74
  br label %66

79:                                               ; preds = %77
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %234

83:                                               ; preds = %79
  %84 = bitcast %union.string_list_elem_attr* %11 to i32*
  store i32 0, i32* %84, align 4
  %85 = call i8* (...) @string_list_new()
  %86 = bitcast i8* %85 to %struct.TYPE_7__*
  %87 = load %struct.core_option*, %struct.core_option** %14, align 8
  %88 = getelementptr inbounds %struct.core_option, %struct.core_option* %87, i32 0, i32 3
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = call i8* (...) @string_list_new()
  %90 = bitcast i8* %89 to %struct.TYPE_7__*
  %91 = load %struct.core_option*, %struct.core_option** %14, align 8
  %92 = getelementptr inbounds %struct.core_option, %struct.core_option* %91, i32 0, i32 5
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.core_option*, %struct.core_option** %14, align 8
  %94 = getelementptr inbounds %struct.core_option, %struct.core_option* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load %struct.core_option*, %struct.core_option** %14, align 8
  %99 = getelementptr inbounds %struct.core_option, %struct.core_option* %98, i32 0, i32 5
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %83
  store i32 0, i32* %5, align 4
  br label %234

103:                                              ; preds = %97
  %104 = load %struct.core_option*, %struct.core_option** %14, align 8
  %105 = getelementptr inbounds %struct.core_option, %struct.core_option* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.core_option*, %struct.core_option** %14, align 8
  %107 = getelementptr inbounds %struct.core_option, %struct.core_option* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  store i64 0, i64* %10, align 8
  br label %108

108:                                              ; preds = %181, %103
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %12, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %108
  %113 = load %struct.core_option*, %struct.core_option** %14, align 8
  %114 = getelementptr inbounds %struct.core_option, %struct.core_option* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %116, i64 %117
  %119 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @string_list_append(%struct.TYPE_7__* %115, i8* %120, i32 %122)
  %124 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %124, i64 %125
  %127 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @string_is_empty(i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %112
  %132 = load %struct.core_option*, %struct.core_option** %14, align 8
  %133 = getelementptr inbounds %struct.core_option, %struct.core_option* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %135, i64 %136
  %138 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @string_list_append(%struct.TYPE_7__* %134, i8* %139, i32 %141)
  br label %155

143:                                              ; preds = %112
  %144 = load %struct.core_option*, %struct.core_option** %14, align 8
  %145 = getelementptr inbounds %struct.core_option, %struct.core_option* %144, i32 0, i32 5
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %147, i64 %148
  %150 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @string_list_append(%struct.TYPE_7__* %146, i8* %151, i32 %153)
  br label %155

155:                                              ; preds = %143, %131
  %156 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %157 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @string_is_empty(i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %180, label %161

161:                                              ; preds = %155
  %162 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %163 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.retro_core_option_value*, %struct.retro_core_option_value** %15, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %165, i64 %166
  %168 = getelementptr inbounds %struct.retro_core_option_value, %struct.retro_core_option_value* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @string_is_equal(i8* %164, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %161
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.core_option*, %struct.core_option** %14, align 8
  %175 = getelementptr inbounds %struct.core_option, %struct.core_option* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load %struct.core_option*, %struct.core_option** %14, align 8
  %178 = getelementptr inbounds %struct.core_option, %struct.core_option* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %172, %161
  br label %180

180:                                              ; preds = %179, %155
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %10, align 8
  br label %108

184:                                              ; preds = %108
  %185 = load i32*, i32** %9, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32*, i32** %9, align 8
  br label %193

189:                                              ; preds = %184
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  br label %193

193:                                              ; preds = %189, %187
  %194 = phi i32* [ %188, %187 ], [ %192, %189 ]
  %195 = load %struct.core_option*, %struct.core_option** %14, align 8
  %196 = getelementptr inbounds %struct.core_option, %struct.core_option* %195, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @config_get_string(i32* %194, i8* %197, i8** %13)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %233

200:                                              ; preds = %193
  store i64 0, i64* %10, align 8
  br label %201

201:                                              ; preds = %227, %200
  %202 = load i64, i64* %10, align 8
  %203 = load %struct.core_option*, %struct.core_option** %14, align 8
  %204 = getelementptr inbounds %struct.core_option, %struct.core_option* %203, i32 0, i32 3
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ult i64 %202, %207
  br i1 %208, label %209, label %230

209:                                              ; preds = %201
  %210 = load %struct.core_option*, %struct.core_option** %14, align 8
  %211 = getelementptr inbounds %struct.core_option, %struct.core_option* %210, i32 0, i32 3
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = load i64, i64* %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = call i64 @string_is_equal(i8* %218, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %209
  %223 = load i64, i64* %10, align 8
  %224 = load %struct.core_option*, %struct.core_option** %14, align 8
  %225 = getelementptr inbounds %struct.core_option, %struct.core_option* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  br label %230

226:                                              ; preds = %209
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %10, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %10, align 8
  br label %201

230:                                              ; preds = %222, %201
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @free(i8* %231)
  br label %233

233:                                              ; preds = %230, %193
  store i32 1, i32* %5, align 4
  br label %234

234:                                              ; preds = %233, %102, %82
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @string_list_new(...) #1

declare dso_local i32 @string_list_append(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
