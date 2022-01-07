; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splayremovebyaddr.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splayremovebyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32 }
%struct.Curl_tree = type { %struct.Curl_tree*, %struct.Curl_tree*, i32, %struct.TYPE_2__*, %struct.Curl_tree* }
%struct.TYPE_2__ = type { %struct.Curl_tree* }

@Curl_splayremovebyaddr.KEY_NOTUSED = internal constant %struct.curltime { i32 -1, i32 -1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_splayremovebyaddr(%struct.Curl_tree* %0, %struct.Curl_tree* %1, %struct.Curl_tree** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_tree*, align 8
  %6 = alloca %struct.Curl_tree*, align 8
  %7 = alloca %struct.Curl_tree**, align 8
  %8 = alloca %struct.Curl_tree*, align 8
  store %struct.Curl_tree* %0, %struct.Curl_tree** %5, align 8
  store %struct.Curl_tree* %1, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree** %2, %struct.Curl_tree*** %7, align 8
  %9 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %10 = icmp ne %struct.Curl_tree* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %13 = icmp ne %struct.Curl_tree* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 1, i32* %4, align 4
  br label %118

15:                                               ; preds = %11
  %16 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %17 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* bitcast (%struct.curltime* @Curl_splayremovebyaddr.KEY_NOTUSED to i64*), align 4
  %20 = call i64 @compare(i64 %19, i32 %18)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %24 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %23, i32 0, i32 4
  %25 = load %struct.Curl_tree*, %struct.Curl_tree** %24, align 8
  %26 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %27 = icmp eq %struct.Curl_tree* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 3, i32* %4, align 4
  br label %118

29:                                               ; preds = %22
  %30 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %31 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %30, i32 0, i32 4
  %32 = load %struct.Curl_tree*, %struct.Curl_tree** %31, align 8
  %33 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %34 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.Curl_tree* %32, %struct.Curl_tree** %36, align 8
  %37 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %38 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %41 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %40, i32 0, i32 4
  %42 = load %struct.Curl_tree*, %struct.Curl_tree** %41, align 8
  %43 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %42, i32 0, i32 3
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %45 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %46 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %45, i32 0, i32 4
  store %struct.Curl_tree* %44, %struct.Curl_tree** %46, align 8
  %47 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %48 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* %47, %struct.Curl_tree** %48, align 8
  store i32 0, i32* %4, align 4
  br label %118

49:                                               ; preds = %15
  %50 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %51 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %54 = call %struct.Curl_tree* @Curl_splay(i32 %52, %struct.Curl_tree* %53)
  store %struct.Curl_tree* %54, %struct.Curl_tree** %5, align 8
  %55 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %56 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %57 = icmp ne %struct.Curl_tree* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 2, i32* %4, align 4
  br label %118

59:                                               ; preds = %49
  %60 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %61 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %60, i32 0, i32 4
  %62 = load %struct.Curl_tree*, %struct.Curl_tree** %61, align 8
  store %struct.Curl_tree* %62, %struct.Curl_tree** %8, align 8
  %63 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %64 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %65 = icmp ne %struct.Curl_tree* %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %59
  %67 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %68 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %71 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %73 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %72, i32 0, i32 0
  %74 = load %struct.Curl_tree*, %struct.Curl_tree** %73, align 8
  %75 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %76 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %75, i32 0, i32 0
  store %struct.Curl_tree* %74, %struct.Curl_tree** %76, align 8
  %77 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %78 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %77, i32 0, i32 1
  %79 = load %struct.Curl_tree*, %struct.Curl_tree** %78, align 8
  %80 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %81 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %80, i32 0, i32 1
  store %struct.Curl_tree* %79, %struct.Curl_tree** %81, align 8
  %82 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %83 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %86 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %85, i32 0, i32 3
  store %struct.TYPE_2__* %84, %struct.TYPE_2__** %86, align 8
  %87 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %88 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %89 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store %struct.Curl_tree* %87, %struct.Curl_tree** %91, align 8
  br label %115

92:                                               ; preds = %59
  %93 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %94 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %93, i32 0, i32 1
  %95 = load %struct.Curl_tree*, %struct.Curl_tree** %94, align 8
  %96 = icmp eq %struct.Curl_tree* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %99 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %98, i32 0, i32 0
  %100 = load %struct.Curl_tree*, %struct.Curl_tree** %99, align 8
  store %struct.Curl_tree* %100, %struct.Curl_tree** %8, align 8
  br label %114

101:                                              ; preds = %92
  %102 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %103 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %106 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %105, i32 0, i32 1
  %107 = load %struct.Curl_tree*, %struct.Curl_tree** %106, align 8
  %108 = call %struct.Curl_tree* @Curl_splay(i32 %104, %struct.Curl_tree* %107)
  store %struct.Curl_tree* %108, %struct.Curl_tree** %8, align 8
  %109 = load %struct.Curl_tree*, %struct.Curl_tree** %5, align 8
  %110 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %109, i32 0, i32 0
  %111 = load %struct.Curl_tree*, %struct.Curl_tree** %110, align 8
  %112 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %113 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %112, i32 0, i32 0
  store %struct.Curl_tree* %111, %struct.Curl_tree** %113, align 8
  br label %114

114:                                              ; preds = %101, %97
  br label %115

115:                                              ; preds = %114, %66
  %116 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %117 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* %116, %struct.Curl_tree** %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %58, %29, %28, %14
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @compare(i64, i32) #1

declare dso_local %struct.Curl_tree* @Curl_splay(i32, %struct.Curl_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
