; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splay.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_tree = type { %struct.Curl_tree*, %struct.Curl_tree*, i32 }
%struct.curltime = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_tree* @Curl_splay(i32 %0, %struct.Curl_tree* %1) #0 {
  %3 = alloca %struct.Curl_tree*, align 8
  %4 = alloca %struct.curltime, align 4
  %5 = alloca %struct.Curl_tree*, align 8
  %6 = alloca %struct.Curl_tree, align 8
  %7 = alloca %struct.Curl_tree*, align 8
  %8 = alloca %struct.Curl_tree*, align 8
  %9 = alloca %struct.Curl_tree*, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store %struct.Curl_tree* %1, %struct.Curl_tree** %5, align 8
  %12 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %13 = icmp eq %struct.Curl_tree* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  store %struct.Curl_tree* %15, %struct.Curl_tree** %3, align 8
  br label %140

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %6, i32 0, i32 1
  store %struct.Curl_tree* null, %struct.Curl_tree** %17, align 8
  %18 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %6, i32 0, i32 0
  store %struct.Curl_tree* null, %struct.Curl_tree** %18, align 8
  store %struct.Curl_tree* %6, %struct.Curl_tree** %8, align 8
  store %struct.Curl_tree* %6, %struct.Curl_tree** %7, align 8
  br label %19

19:                                               ; preds = %119, %16
  %20 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %21 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @compare(i32 %24, i32 %22)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %19
  %29 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %30 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %29, i32 0, i32 0
  %31 = load %struct.Curl_tree*, %struct.Curl_tree** %30, align 8
  %32 = icmp eq %struct.Curl_tree* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %120

34:                                               ; preds = %28
  %35 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %36 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %35, i32 0, i32 0
  %37 = load %struct.Curl_tree*, %struct.Curl_tree** %36, align 8
  %38 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @compare(i32 %41, i32 %39)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %34
  %45 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %46 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %45, i32 0, i32 0
  %47 = load %struct.Curl_tree*, %struct.Curl_tree** %46, align 8
  store %struct.Curl_tree* %47, %struct.Curl_tree** %9, align 8
  %48 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  %49 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %48, i32 0, i32 1
  %50 = load %struct.Curl_tree*, %struct.Curl_tree** %49, align 8
  %51 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %52 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %51, i32 0, i32 0
  store %struct.Curl_tree* %50, %struct.Curl_tree** %52, align 8
  %53 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %54 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  %55 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %54, i32 0, i32 1
  store %struct.Curl_tree* %53, %struct.Curl_tree** %55, align 8
  %56 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  store %struct.Curl_tree* %56, %struct.Curl_tree** %5, align 8
  %57 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %58 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %57, i32 0, i32 0
  %59 = load %struct.Curl_tree*, %struct.Curl_tree** %58, align 8
  %60 = icmp eq %struct.Curl_tree* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %120

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %65 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %66 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %65, i32 0, i32 0
  store %struct.Curl_tree* %64, %struct.Curl_tree** %66, align 8
  %67 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  store %struct.Curl_tree* %67, %struct.Curl_tree** %8, align 8
  %68 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %69 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %68, i32 0, i32 0
  %70 = load %struct.Curl_tree*, %struct.Curl_tree** %69, align 8
  store %struct.Curl_tree* %70, %struct.Curl_tree** %5, align 8
  br label %119

71:                                               ; preds = %19
  %72 = load i64, i64* %10, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %71
  %75 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %76 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %75, i32 0, i32 1
  %77 = load %struct.Curl_tree*, %struct.Curl_tree** %76, align 8
  %78 = icmp eq %struct.Curl_tree* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %120

80:                                               ; preds = %74
  %81 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %82 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %81, i32 0, i32 1
  %83 = load %struct.Curl_tree*, %struct.Curl_tree** %82, align 8
  %84 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @compare(i32 %87, i32 %85)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %80
  %91 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %92 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %91, i32 0, i32 1
  %93 = load %struct.Curl_tree*, %struct.Curl_tree** %92, align 8
  store %struct.Curl_tree* %93, %struct.Curl_tree** %9, align 8
  %94 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  %95 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %94, i32 0, i32 0
  %96 = load %struct.Curl_tree*, %struct.Curl_tree** %95, align 8
  %97 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %98 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %97, i32 0, i32 1
  store %struct.Curl_tree* %96, %struct.Curl_tree** %98, align 8
  %99 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %100 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  %101 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %100, i32 0, i32 0
  store %struct.Curl_tree* %99, %struct.Curl_tree** %101, align 8
  %102 = load %struct.Curl_tree*, %struct.Curl_tree** %9, align 8
  store %struct.Curl_tree* %102, %struct.Curl_tree** %5, align 8
  %103 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %104 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %103, i32 0, i32 1
  %105 = load %struct.Curl_tree*, %struct.Curl_tree** %104, align 8
  %106 = icmp eq %struct.Curl_tree* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %120

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %80
  %110 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %111 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %112 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %111, i32 0, i32 1
  store %struct.Curl_tree* %110, %struct.Curl_tree** %112, align 8
  %113 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  store %struct.Curl_tree* %113, %struct.Curl_tree** %7, align 8
  %114 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %115 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %114, i32 0, i32 1
  %116 = load %struct.Curl_tree*, %struct.Curl_tree** %115, align 8
  store %struct.Curl_tree* %116, %struct.Curl_tree** %5, align 8
  br label %118

117:                                              ; preds = %71
  br label %120

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %63
  br label %19

120:                                              ; preds = %117, %107, %79, %61, %33
  %121 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %122 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %121, i32 0, i32 0
  %123 = load %struct.Curl_tree*, %struct.Curl_tree** %122, align 8
  %124 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %125 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %124, i32 0, i32 1
  store %struct.Curl_tree* %123, %struct.Curl_tree** %125, align 8
  %126 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %127 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %126, i32 0, i32 1
  %128 = load %struct.Curl_tree*, %struct.Curl_tree** %127, align 8
  %129 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %130 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %129, i32 0, i32 0
  store %struct.Curl_tree* %128, %struct.Curl_tree** %130, align 8
  %131 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %6, i32 0, i32 1
  %132 = load %struct.Curl_tree*, %struct.Curl_tree** %131, align 8
  %133 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %134 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %133, i32 0, i32 0
  store %struct.Curl_tree* %132, %struct.Curl_tree** %134, align 8
  %135 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %6, i32 0, i32 0
  %136 = load %struct.Curl_tree*, %struct.Curl_tree** %135, align 8
  %137 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %138 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %137, i32 0, i32 1
  store %struct.Curl_tree* %136, %struct.Curl_tree** %138, align 8
  %139 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  store %struct.Curl_tree* %139, %struct.Curl_tree** %3, align 8
  br label %140

140:                                              ; preds = %120, %14
  %141 = load %struct.Curl_tree*, %struct.Curl_tree** %3, align 8
  ret %struct.Curl_tree* %141
}

declare dso_local i64 @compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
