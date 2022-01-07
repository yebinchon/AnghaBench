; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_gen_rand_array_c0o1.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_gen_rand_array_c0o1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@DSFMT_N = common dso_local global i64 0, align 8
@DSFMT_POS1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i32)* @gen_rand_array_c0o1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_rand_array_c0o1(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @DSFMT_N, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* @DSFMT_POS1, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = call i32 @do_recursion(i8** %17, i8** %21, i8** %26, i8** %9)
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %3
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @DSFMT_N, align 8
  %32 = load i64, i64* @DSFMT_POS1, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @DSFMT_POS1, align 8
  %52 = add i64 %50, %51
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  %54 = call i32 @do_recursion(i8** %39, i8** %45, i8** %53, i8** %9)
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %84, %58
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @DSFMT_N, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @DSFMT_POS1, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* @DSFMT_N, align 8
  %81 = sub i64 %79, %80
  %82 = getelementptr inbounds i8*, i8** %75, i64 %81
  %83 = call i32 @do_recursion(i8** %68, i8** %74, i8** %82, i8** %9)
  br label %84

84:                                               ; preds = %64
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %59

87:                                               ; preds = %59
  br label %88

88:                                               ; preds = %123, %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @DSFMT_N, align 8
  %94 = sub i64 %92, %93
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @DSFMT_N, align 8
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds i8*, i8** %101, i64 %105
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @DSFMT_POS1, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* @DSFMT_N, align 8
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds i8*, i8** %107, i64 %113
  %115 = call i32 @do_recursion(i8** %100, i8** %106, i8** %114, i8** %9)
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @DSFMT_N, align 8
  %120 = sub i64 %118, %119
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  %122 = call i32 @convert_c0o1(i8** %121)
  br label %123

123:                                              ; preds = %96
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %88

126:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %152, %126
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @DSFMT_N, align 8
  %131 = mul i64 2, %130
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %131, %133
  %135 = icmp ult i64 %129, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %127
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @DSFMT_N, align 8
  %143 = sub i64 %141, %142
  %144 = getelementptr inbounds i8*, i8** %137, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %145, i8** %151, align 8
  br label %152

152:                                              ; preds = %136
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %127

155:                                              ; preds = %127
  br label %156

156:                                              ; preds = %198, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %156
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* @DSFMT_N, align 8
  %169 = sub i64 %167, %168
  %170 = getelementptr inbounds i8*, i8** %165, i64 %169
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* @DSFMT_POS1, align 8
  %175 = add i64 %173, %174
  %176 = load i64, i64* @DSFMT_N, align 8
  %177 = sub i64 %175, %176
  %178 = getelementptr inbounds i8*, i8** %171, i64 %177
  %179 = call i32 @do_recursion(i8** %164, i8** %170, i8** %178, i8** %9)
  %180 = load i8**, i8*** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load i8**, i8*** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @DSFMT_N, align 8
  %195 = sub i64 %193, %194
  %196 = getelementptr inbounds i8*, i8** %191, i64 %195
  %197 = call i32 @convert_c0o1(i8** %196)
  br label %198

198:                                              ; preds = %160
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %156

203:                                              ; preds = %156
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @DSFMT_N, align 8
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %219, %203
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %222

213:                                              ; preds = %209
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = call i32 @convert_c0o1(i8** %217)
  br label %219

219:                                              ; preds = %213
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %209

222:                                              ; preds = %209
  %223 = load i8*, i8** %9, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i8**, i8*** %225, align 8
  %227 = load i64, i64* @DSFMT_N, align 8
  %228 = getelementptr inbounds i8*, i8** %226, i64 %227
  store i8* %223, i8** %228, align 8
  ret void
}

declare dso_local i32 @do_recursion(i8**, i8**, i8**, i8**) #1

declare dso_local i32 @convert_c0o1(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
