; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tStrGetToken.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tStrGetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i32 }

@TK_SEMI = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TK_ILLEGAL = common dso_local global i64 0, align 8
@TK_MINUS = common dso_local global i64 0, align 8
@TK_PLUS = common dso_local global i64 0, align 8
@TK_INTEGER = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tStrGetToken(%struct.TYPE_3__* noalias sret %0, i8* %1, i64* %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64* %5, i64** %11, align 8
  %17 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load i8*, i8** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %232

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %133
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %99, %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %82, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %82, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %82, label %58

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 9
  br i1 %65, label %82, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %7, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 12
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 44
  br label %82

82:                                               ; preds = %74, %66, %58, %50, %42, %34
  %83 = phi i1 [ true, %66 ], [ true, %58 ], [ true, %50 ], [ true, %42 ], [ true, %34 ], [ %81, %74 ]
  br i1 %83, label %84, label %103

84:                                               ; preds = %82
  %85 = load i8*, i8** %7, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 44
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 0, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, i32* %12, align 4
  br label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %232

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i64*, i64** %8, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  br label %34

103:                                              ; preds = %82
  %104 = load i8*, i8** %7, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %109 = call i8* @tSQLGetToken(i8* %107, i64* %108)
  %110 = ptrtoint i8* %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %112

112:                                              ; preds = %126, %103
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %13, align 4
  br label %129

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %14, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %14, align 8
  br label %112

129:                                              ; preds = %124, %112
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129
  br label %28

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TK_SEMI, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %232

141:                                              ; preds = %134
  store i64 0, i64* %15, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %144, %146
  %148 = getelementptr inbounds i8, i8* %142, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 46, %150
  br i1 %151, label %152, label %182

152:                                              ; preds = %141
  %153 = load i8*, i8** %7, align 8
  %154 = load i64*, i64** %8, align 8
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %155, %157
  %159 = add i64 %158, 1
  %160 = getelementptr inbounds i8, i8* %153, i64 %159
  %161 = call i8* @tSQLGetToken(i8* %160, i64* %15)
  %162 = ptrtoint i8* %161 to i64
  store i64 %162, i64* %16, align 8
  %163 = load i64, i64* @TK_STRING, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %163, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %152
  %168 = load i64, i64* @TK_ID, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i64, i64* @TK_ILLEGAL, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i64 %173, i64* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 0, i64* %175, align 8
  br label %232

176:                                              ; preds = %167, %152
  %177 = load i64, i64* %16, align 8
  %178 = add i64 %177, 1
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, %178
  store i64 %181, i64* %179, align 8
  br label %221

182:                                              ; preds = %141
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %220

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TK_MINUS, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @TK_PLUS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %190, %185
  %196 = load i8*, i8** %7, align 8
  %197 = load i64*, i64** %8, align 8
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %198, %200
  %202 = getelementptr inbounds i8, i8* %196, i64 %201
  %203 = call i8* @tSQLGetToken(i8* %202, i64* %15)
  %204 = ptrtoint i8* %203 to i64
  store i64 %204, i64* %16, align 8
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* @TK_INTEGER, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %195
  %209 = load i64, i64* %15, align 8
  %210 = load i64, i64* @TK_FLOAT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %208, %195
  %213 = load i64, i64* %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load i64, i64* %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, %215
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %212, %208
  br label %220

220:                                              ; preds = %219, %190, %182
  br label %221

221:                                              ; preds = %220, %176
  %222 = load i8*, i8** %7, align 8
  %223 = load i64*, i64** %8, align 8
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %225, i8** %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %8, align 8
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %228
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %221, %172, %139, %96, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @tSQLGetToken(i8*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
