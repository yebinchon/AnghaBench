; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_calculate_uri_length.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_calculate_uri_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@scheme_reserved_chars = common dso_local global i32 0, align 4
@host_reserved_chars = common dso_local global i32 0, align 4
@userinfo_reserved_chars = common dso_local global i32 0, align 4
@port_reserved_chars = common dso_local global i32 0, align 4
@path_reserved_chars = common dso_local global i32 0, align 4
@query_reserved_chars = common dso_local global i32 0, align 4
@fragment_reserved_chars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @calculate_uri_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_uri_length(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @strlen(i64 %19)
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i64 [ %20, %16 ], [ 0, %21 ]
  store i64 %23, i64* %2, align 8
  br label %144

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @scheme_reserved_chars, align 4
  %29 = call i64 @escaped_length(i64 %27, i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %24
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @host_reserved_chars, align 4
  %43 = call i64 @escaped_length(i64 %41, i32 %42)
  %44 = add nsw i64 %43, 2
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @userinfo_reserved_chars, align 4
  %56 = call i64 @escaped_length(i64 %54, i32 %55)
  %57 = add nsw i64 %56, 1
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %51, %38
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @port_reserved_chars, align 4
  %70 = call i64 @escaped_length(i64 %68, i32 %69)
  %71 = add nsw i64 %70, 1
  %72 = load i64, i64* %4, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %65, %60
  br label %75

75:                                               ; preds = %74, %24
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @path_reserved_chars, align 4
  %85 = call i64 @escaped_length(i64 %83, i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %6, align 8
  br label %98

98:                                               ; preds = %124, %94
  %99 = load i64, i64* %5, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %5, align 8
  %101 = icmp ne i64 %99, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @query_reserved_chars, align 4
  %107 = call i64 @escaped_length(i64 %105, i32 %106)
  %108 = add nsw i64 %107, 1
  %109 = load i64, i64* %4, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %4, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %102
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @query_reserved_chars, align 4
  %120 = call i64 @escaped_length(i64 %118, i32 %119)
  %121 = add nsw i64 %120, 1
  %122 = load i64, i64* %4, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %115, %102
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 1
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %6, align 8
  br label %98

127:                                              ; preds = %98
  br label %128

128:                                              ; preds = %127, %88
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @fragment_reserved_chars, align 4
  %138 = call i64 @escaped_length(i64 %136, i32 %137)
  %139 = add nsw i64 %138, 1
  %140 = load i64, i64* %4, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %133, %128
  %143 = load i64, i64* %4, align 8
  store i64 %143, i64* %2, align 8
  br label %144

144:                                              ; preds = %142, %22
  %145 = load i64, i64* %2, align 8
  ret i64 %145
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @escaped_length(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
