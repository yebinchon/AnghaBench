; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_createAlias.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_createAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NAME_MAX = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@ILLEGAL_ALIAS_CHARACTERS = common dso_local global i8* null, align 8
@MAX_ALIAS_EXT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_FAT_directory_createAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_createAlias(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %24, %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %16

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %91, %76, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 46
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %39, %31, %28
  %48 = phi i1 [ false, %31 ], [ false, %28 ], [ %46, %39 ]
  br i1 %48, label %49, label %103

49:                                               ; preds = %47
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i64, i64* @NAME_MAX, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i32 @mbrtowc(i64* %9, i8* %53, i64 %57, %struct.TYPE_4__* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %234

62:                                               ; preds = %49
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @towupper(i32 %64)
  %66 = call i32 @wctob(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @wctob(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  store i32 1, i32* %6, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %28

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @EOF, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 95, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i8*, i8** @ILLEGAL_ALIAS_CHARACTERS, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @strchr(i8* %86, i32 %87)
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 95, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* %10, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %28

103:                                              ; preds = %47
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 46
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %111, %103
  %121 = load i8*, i8** %5, align 8
  %122 = call i8* @strrchr(i8* %121, i8 signext 46)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* @strchr(i8* %127, i32 46)
  %129 = icmp ne i8* %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %6, align 4
  br label %131

131:                                              ; preds = %130, %125, %120
  %132 = load i8*, i8** %13, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %224

134:                                              ; preds = %131
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %224

140:                                              ; preds = %134
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %13, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 46, i8* %146, align 1
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 4)
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %214, %140
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @MAX_ALIAS_EXT_LENGTH, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8*, i8** %13, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi i1 [ false, %150 ], [ %158, %154 ]
  br i1 %160, label %161, label %217

161:                                              ; preds = %159
  %162 = load i8*, i8** %13, align 8
  %163 = load i64, i64* @NAME_MAX, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %163, %165
  %167 = call i32 @mbrtowc(i64* %9, i8* %162, i64 %166, %struct.TYPE_4__* %11)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  store i32 -1, i32* %3, align 4
  br label %234

171:                                              ; preds = %161
  %172 = load i64, i64* %9, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @towupper(i32 %173)
  %175 = call i32 @wctob(i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i64, i64* %9, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @wctob(i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  store i32 1, i32* %6, align 4
  br label %182

182:                                              ; preds = %181, %171
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, 32
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  store i32 1, i32* %6, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i8*, i8** %13, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %13, align 8
  br label %214

190:                                              ; preds = %182
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @EOF, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 95, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %195

195:                                              ; preds = %194, %190
  %196 = load i8*, i8** @ILLEGAL_ALIAS_CHARACTERS, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i8* @strchr(i8* %196, i32 %197)
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 95, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i32, i32* %10, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %4, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %203, i8* %207, align 1
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i8*, i8** %13, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %13, align 8
  br label %214

214:                                              ; preds = %201, %185
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %150

217:                                              ; preds = %159
  %218 = load i8*, i8** %13, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 1, i32* %6, align 4
  br label %223

223:                                              ; preds = %222, %217
  br label %224

224:                                              ; preds = %223, %134, %131
  %225 = load i8*, i8** %4, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  store i8 0, i8* %228, align 1
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %3, align 4
  br label %234

233:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %233, %231, %170, %61
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mbrtowc(i64*, i8*, i64, %struct.TYPE_4__*) #2

declare dso_local i32 @wctob(i32) #2

declare dso_local i32 @towupper(i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
