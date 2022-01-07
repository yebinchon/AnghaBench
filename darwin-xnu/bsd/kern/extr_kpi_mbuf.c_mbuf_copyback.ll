; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_copyback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_copyback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MLEN = common dso_local global i64 0, align 8
@MINCLSIZE = common dso_local global i64 0, align 8
@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_copyback(%struct.TYPE_11__* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %17, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %207

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %73, %31
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_11__* @m_getclr(i32 %52, i32 %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %14, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = icmp eq %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOBUFS, align 4
  store i32 %60, i32* %16, align 4
  br label %186

61:                                               ; preds = %51
  %62 = load i64, i64* @MLEN, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %63, %64
  %66 = call i8* @MIN(i64 %62, i64 %65)
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %72, align 8
  br label %73

73:                                               ; preds = %61, %38
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %7, align 8
  br label %32

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %181, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %185

81:                                               ; preds = %78
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %84, %85
  %87 = load i64, i64* %9, align 8
  %88 = call i8* @MIN(i64 %86, i64 %87)
  %89 = ptrtoint i8* %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %81
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = icmp eq %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = call i64 @mbuf_trailingspace(%struct.TYPE_11__* %99)
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = call i64 @mbuf_trailingspace(%struct.TYPE_11__* %103)
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %105, %106
  %108 = call i8* @MIN(i64 %104, i64 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %18, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %102, %98, %93, %81
  %119 = load i8*, i8** %17, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = call i64 @mbuf_data(%struct.TYPE_11__* %121)
  %123 = inttoptr i64 %122 to i8*
  %124 = getelementptr inbounds i8, i8* %123, i64 %120
  %125 = load i64, i64* %12, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @bcopy(i8* %119, i8* %124, i32 %126)
  %128 = load i64, i64* %12, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %17, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %12, align 8
  store i64 0, i64* %8, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i64, i64* %9, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %118
  br label %185

145:                                              ; preds = %118
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = icmp eq %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %181

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.TYPE_11__* @m_get(i32 %151, i32 %154)
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %14, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %157 = icmp eq %struct.TYPE_11__* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @ENOBUFS, align 4
  store i32 %159, i32* %16, align 4
  br label %186

160:                                              ; preds = %150
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @MINCLSIZE, align 8
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @mbuf_mclget(i32 %165, i32 %168, %struct.TYPE_11__** %14)
  br label %170

170:                                              ; preds = %164, %160
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %172 = call i64 @mbuf_maxlen(%struct.TYPE_11__* %171)
  %173 = load i64, i64* %9, align 8
  %174 = call i8* @MIN(i64 %172, i64 %173)
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  store %struct.TYPE_11__* %178, %struct.TYPE_11__** %180, align 8
  br label %181

181:                                              ; preds = %170, %145
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %7, align 8
  br label %78

185:                                              ; preds = %144, %78
  br label %186

186:                                              ; preds = %185, %158, %59
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @M_PKTHDR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %186
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i32, i32* %15, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %193, %186
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %205, %29
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_11__* @m_getclr(i32, i32) #1

declare dso_local i8* @MIN(i64, i64) #1

declare dso_local i64 @mbuf_trailingspace(%struct.TYPE_11__*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @mbuf_data(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @m_get(i32, i32) #1

declare dso_local i32 @mbuf_mclget(i32, i32, %struct.TYPE_11__**) #1

declare dso_local i64 @mbuf_maxlen(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
