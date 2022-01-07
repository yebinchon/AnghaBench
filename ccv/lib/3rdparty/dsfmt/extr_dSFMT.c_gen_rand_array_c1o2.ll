; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_gen_rand_array_c1o2.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_gen_rand_array_c1o2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@DSFMT_N = common dso_local global i64 0, align 8
@DSFMT_POS1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i32)* @gen_rand_array_c1o2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_rand_array_c1o2(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
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

88:                                               ; preds = %116, %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @DSFMT_N, align 8
  %94 = sub i64 %92, %93
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %119

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
  br label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %88

119:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %145, %119
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @DSFMT_N, align 8
  %124 = mul i64 2, %123
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 %124, %126
  %128 = icmp ult i64 %122, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %120
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @DSFMT_N, align 8
  %136 = sub i64 %134, %135
  %137 = getelementptr inbounds i8*, i8** %130, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %138, i8** %144, align 8
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %120

148:                                              ; preds = %120
  br label %149

149:                                              ; preds = %184, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %149
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* @DSFMT_N, align 8
  %162 = sub i64 %160, %161
  %163 = getelementptr inbounds i8*, i8** %158, i64 %162
  %164 = load i8**, i8*** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @DSFMT_POS1, align 8
  %168 = add i64 %166, %167
  %169 = load i64, i64* @DSFMT_N, align 8
  %170 = sub i64 %168, %169
  %171 = getelementptr inbounds i8*, i8** %164, i64 %170
  %172 = call i32 @do_recursion(i8** %157, i8** %163, i8** %171, i8** %9)
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i8**, i8*** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  store i8* %177, i8** %183, align 8
  br label %184

184:                                              ; preds = %153
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %149

189:                                              ; preds = %149
  %190 = load i8*, i8** %9, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i8**, i8*** %192, align 8
  %194 = load i64, i64* @DSFMT_N, align 8
  %195 = getelementptr inbounds i8*, i8** %193, i64 %194
  store i8* %190, i8** %195, align 8
  ret void
}

declare dso_local i32 @do_recursion(i8**, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
