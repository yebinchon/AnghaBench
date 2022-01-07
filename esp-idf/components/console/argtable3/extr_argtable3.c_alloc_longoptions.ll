; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_alloc_longoptions.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_alloc_longoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.longoptions = type { i32, %struct.option*, i64 }
%struct.option = type { i8*, i32, i32, i64* }
%struct.arg_hdr = type { i32, i8* }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@ARG_HASVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.longoptions* (%struct.arg_hdr**)* @alloc_longoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.longoptions* @alloc_longoptions(%struct.arg_hdr** %0) #0 {
  %2 = alloca %struct.arg_hdr**, align 8
  %3 = alloca %struct.longoptions*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.arg_hdr** %0, %struct.arg_hdr*** %2, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %14, i64 %16
  %18 = load %struct.arg_hdr*, %struct.arg_hdr** %17, align 8
  %19 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  br label %27

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %36, %27
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 44)
  store i8* %41, i8** %8, align 8
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %44, i64 %47
  %49 = load %struct.arg_hdr*, %struct.arg_hdr** %48, align 8
  %50 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ARG_TERMINATOR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %13, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 24, %58
  %60 = add i64 24, %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @malloc(i64 %63)
  %65 = inttoptr i64 %64 to %struct.longoptions*
  store %struct.longoptions* %65, %struct.longoptions** %3, align 8
  %66 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %67 = icmp ne %struct.longoptions* %66, null
  br i1 %67, label %68, label %254

68:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %69 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %70 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %73 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %75 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %74, i64 1
  %76 = bitcast %struct.longoptions* %75 to %struct.option*
  %77 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %78 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %77, i32 0, i32 1
  store %struct.option* %76, %struct.option** %78, align 8
  %79 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %80 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %79, i32 0, i32 1
  %81 = load %struct.option*, %struct.option** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.option, %struct.option* %81, i64 %83
  %85 = bitcast %struct.option* %84 to i8*
  store i8* %85, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %222, %68
  %87 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %87, i64 %89
  %91 = load %struct.arg_hdr*, %struct.arg_hdr** %90, align 8
  %92 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ARG_TERMINATOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %225

98:                                               ; preds = %86
  %99 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %99, i64 %101
  %103 = load %struct.arg_hdr*, %struct.arg_hdr** %102, align 8
  %104 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %218, %98
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %109, %106
  %115 = phi i1 [ false, %106 ], [ %113, %109 ]
  br i1 %115, label %116, label %221

116:                                              ; preds = %114
  %117 = load i8*, i8** %10, align 8
  store i8* %117, i8** %12, align 8
  br label %118

118:                                              ; preds = %130, %116
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %11, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 44
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ false, %118 ], [ %127, %123 ]
  br i1 %129, label %130, label %136

130:                                              ; preds = %128
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %11, align 8
  %133 = load i8, i8* %131, align 1
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %10, align 8
  store i8 %133, i8* %134, align 1
  br label %118

136:                                              ; preds = %128
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  store i8 0, i8* %137, align 1
  %139 = load i8*, i8** %11, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 44
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %11, align 8
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i8*, i8** %12, align 8
  %148 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %149 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %148, i32 0, i32 1
  %150 = load %struct.option*, %struct.option** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.option, %struct.option* %150, i64 %152
  %154 = getelementptr inbounds %struct.option, %struct.option* %153, i32 0, i32 0
  store i8* %147, i8** %154, align 8
  %155 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %156 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %155, i32 0, i32 2
  %157 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %158 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %157, i32 0, i32 1
  %159 = load %struct.option*, %struct.option** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.option, %struct.option* %159, i64 %161
  %163 = getelementptr inbounds %struct.option, %struct.option* %162, i32 0, i32 3
  store i64* %156, i64** %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %166 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %165, i32 0, i32 1
  %167 = load %struct.option*, %struct.option** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.option, %struct.option* %167, i64 %169
  %171 = getelementptr inbounds %struct.option, %struct.option* %170, i32 0, i32 1
  store i32 %164, i32* %171, align 8
  %172 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %172, i64 %174
  %176 = load %struct.arg_hdr*, %struct.arg_hdr** %175, align 8
  %177 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %146
  %183 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %184 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %183, i32 0, i32 1
  %185 = load %struct.option*, %struct.option** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.option, %struct.option* %185, i64 %187
  %189 = getelementptr inbounds %struct.option, %struct.option* %188, i32 0, i32 2
  store i32 2, i32* %189, align 4
  br label %218

190:                                              ; preds = %146
  %191 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %191, i64 %193
  %195 = load %struct.arg_hdr*, %struct.arg_hdr** %194, align 8
  %196 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @ARG_HASVALUE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %190
  %202 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %203 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %202, i32 0, i32 1
  %204 = load %struct.option*, %struct.option** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.option, %struct.option* %204, i64 %206
  %208 = getelementptr inbounds %struct.option, %struct.option* %207, i32 0, i32 2
  store i32 1, i32* %208, align 4
  br label %217

209:                                              ; preds = %190
  %210 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %211 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %210, i32 0, i32 1
  %212 = load %struct.option*, %struct.option** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.option, %struct.option* %212, i64 %214
  %216 = getelementptr inbounds %struct.option, %struct.option* %215, i32 0, i32 2
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %209, %201
  br label %218

218:                                              ; preds = %217, %182
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %106

221:                                              ; preds = %114
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %86

225:                                              ; preds = %86
  %226 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %227 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %226, i32 0, i32 1
  %228 = load %struct.option*, %struct.option** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.option, %struct.option* %228, i64 %230
  %232 = getelementptr inbounds %struct.option, %struct.option* %231, i32 0, i32 0
  store i8* null, i8** %232, align 8
  %233 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %234 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %233, i32 0, i32 1
  %235 = load %struct.option*, %struct.option** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.option, %struct.option* %235, i64 %237
  %239 = getelementptr inbounds %struct.option, %struct.option* %238, i32 0, i32 2
  store i32 0, i32* %239, align 4
  %240 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %241 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %240, i32 0, i32 1
  %242 = load %struct.option*, %struct.option** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.option, %struct.option* %242, i64 %244
  %246 = getelementptr inbounds %struct.option, %struct.option* %245, i32 0, i32 3
  store i64* null, i64** %246, align 8
  %247 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  %248 = getelementptr inbounds %struct.longoptions, %struct.longoptions* %247, i32 0, i32 1
  %249 = load %struct.option*, %struct.option** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.option, %struct.option* %249, i64 %251
  %253 = getelementptr inbounds %struct.option, %struct.option* %252, i32 0, i32 1
  store i32 0, i32* %253, align 8
  br label %254

254:                                              ; preds = %225, %56
  %255 = load %struct.longoptions*, %struct.longoptions** %3, align 8
  ret %struct.longoptions* %255
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
