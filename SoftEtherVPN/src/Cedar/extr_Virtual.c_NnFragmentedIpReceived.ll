; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnFragmentedIpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnFragmentedIpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }

@MAC_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnFragmentedIpReceived(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  br label %196

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_15__* %30)
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Endian16(i32 %45)
  store i32 %46, i32* %11, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %22
  br label %196

51:                                               ; preds = %22
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MAC_HEADER_SIZE, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %196

66:                                               ; preds = %51
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = call i32 @IPV4_GET_OFFSET(%struct.TYPE_15__* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_15__* %71)
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = bitcast %struct.TYPE_15__* %79 to i32*
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @NnIpReceived(i32* %81, i32 %84, i32 %87, i32 %90, i8* %91, i32 %92, i32 %95, i32* %96, i32 %97, i32 %98)
  br label %196

100:                                              ; preds = %70, %66
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = call i32 @IPV4_GET_OFFSET(%struct.TYPE_15__* %101)
  %103 = mul nsw i32 %102, 8
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @Endian16(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.TYPE_14__* @NnSearchIpCombine(i32* %104, i32 %107, i32 %110, i32 %114, i32 %117)
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %15, align 8
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %100
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = bitcast %struct.TYPE_15__* %125 to i32*
  store i32* %126, i32** %12, align 8
  br label %127

127:                                              ; preds = %121, %100
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_15__* %128)
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  store i32 %133, i32* %10, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %135 = icmp ne %struct.TYPE_14__* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %127
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i8* @MAX(i8* %139, i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @NnCombineIp(i32* %144, %struct.TYPE_14__* %145, i32 %146, i8* %147, i32 %148, i32 %149, i32* %150, i32 %151)
  br label %195

153:                                              ; preds = %127
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @Endian16(i32 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_14__* @NnInsertIpCombine(i32* %154, i32 %157, i32 %160, i32 %164, i32 %167, i32 %170, i32 %173, i32 0)
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %15, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %176 = icmp ne %struct.TYPE_14__* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %153
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i8* @MAX(i8* %180, i32 %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i32*, i32** %3, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32*, i32** %12, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @NnCombineIp(i32* %185, %struct.TYPE_14__* %186, i32 %187, i8* %188, i32 %189, i32 %190, i32* %191, i32 %192)
  br label %194

194:                                              ; preds = %177, %153
  br label %195

195:                                              ; preds = %194, %136
  br label %196

196:                                              ; preds = %21, %50, %65, %195, %75
  ret void
}

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_15__*) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @IPV4_GET_OFFSET(%struct.TYPE_15__*) #1

declare dso_local i32 @IPV4_GET_FLAGS(%struct.TYPE_15__*) #1

declare dso_local i32 @NnIpReceived(i32*, i32, i32, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @NnSearchIpCombine(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @MAX(i8*, i32) #1

declare dso_local i32 @NnCombineIp(i32*, %struct.TYPE_14__*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @NnInsertIpCombine(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
