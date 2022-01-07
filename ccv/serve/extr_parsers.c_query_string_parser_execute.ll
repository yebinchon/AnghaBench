; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_parsers.c_query_string_parser_execute.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_parsers.c_query_string_parser_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @query_string_parser_execute(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %155, %3
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %158

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %154 [
    i32 130, label %23
    i32 131, label %34
    i32 128, label %78
    i32 129, label %121
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 131, i32* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %19, %23
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 38
  br i1 %41, label %42, label %74

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 61
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 128, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 131
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8*, i8** %9, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %63, %58
  br label %154

74:                                               ; preds = %34
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 128, i32* %76, align 8
  br label %77

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %19, %77
  %79 = load i64, i64* %8, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %83, align 8
  %85 = icmp ne i32 (i32, i8*, i64, i32)* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 %89(i32 %92, i8* %93, i64 %94, i32 %97)
  store i64 0, i64* %8, align 8
  br label %99

99:                                               ; preds = %86, %81, %78
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 38
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8*, i8** %11, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  store i64 %116, i64* %10, align 8
  br label %154

117:                                              ; preds = %99
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 129, i32* %119, align 8
  br label %120

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %19, %120
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %9, align 8
  store i64 0, i64* %8, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %121
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %131, align 8
  %133 = icmp ne i32 (i32, i8*, i64, i32)* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 %137(i32 %140, i8* %141, i64 %142, i32 %145)
  store i64 0, i64* %10, align 8
  br label %147

147:                                              ; preds = %134, %129, %121
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 131, i32* %153, align 8
  br label %154

154:                                              ; preds = %19, %147, %107, %73
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %14

158:                                              ; preds = %14
  %159 = load i64, i64* %8, align 8
  %160 = icmp ugt i64 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %158
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 131
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %168, align 8
  %170 = icmp ne i32 (i32, i8*, i64, i32)* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %173, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %174(i32 %177, i8* %178, i64 %179, i32 %182)
  br label %211

184:                                              ; preds = %166, %161, %158
  %185 = load i64, i64* %10, align 8
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %184
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 128
  br i1 %191, label %192, label %210

192:                                              ; preds = %187
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  %195 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %194, align 8
  %196 = icmp ne i32 (i32, i8*, i64, i32)* %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  %200 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %199, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 %200(i32 %203, i8* %204, i64 %205, i32 %208)
  br label %210

210:                                              ; preds = %197, %192, %187, %184
  br label %211

211:                                              ; preds = %210, %171
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
