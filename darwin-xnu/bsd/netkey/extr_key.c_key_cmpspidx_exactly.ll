; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpspidx_exactly.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpspidx_exactly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicyindex = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secpolicyindex*, %struct.secpolicyindex*)* @key_cmpspidx_exactly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpspidx_exactly(%struct.secpolicyindex* %0, %struct.secpolicyindex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicyindex*, align 8
  %5 = alloca %struct.secpolicyindex*, align 8
  store %struct.secpolicyindex* %0, %struct.secpolicyindex** %4, align 8
  store %struct.secpolicyindex* %1, %struct.secpolicyindex** %5, align 8
  %6 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %7 = icmp eq %struct.secpolicyindex* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %10 = icmp eq %struct.secpolicyindex* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %121

12:                                               ; preds = %8, %2
  %13 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %14 = icmp eq %struct.secpolicyindex* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %17 = icmp eq %struct.secpolicyindex* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %121

19:                                               ; preds = %15
  %20 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %21 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %24 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %19
  %28 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %29 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %32 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %37 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %40 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %45 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %48 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35, %27, %19
  store i32 0, i32* %3, align 4
  br label %121

52:                                               ; preds = %43
  %53 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %54 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %53, i32 0, i32 7
  %55 = bitcast i32* %54 to %struct.sockaddr*
  %56 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %57 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %56, i32 0, i32 7
  %58 = bitcast i32* %57 to %struct.sockaddr*
  %59 = call i64 @key_sockaddrcmp(%struct.sockaddr* %55, %struct.sockaddr* %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %121

62:                                               ; preds = %52
  %63 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %64 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %63, i32 0, i32 6
  %65 = bitcast i32* %64 to %struct.sockaddr*
  %66 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %67 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %66, i32 0, i32 6
  %68 = bitcast i32* %67 to %struct.sockaddr*
  %69 = call i64 @key_sockaddrcmp(%struct.sockaddr* %65, %struct.sockaddr* %68, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %121

72:                                               ; preds = %62
  %73 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %74 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = bitcast i32* %75 to %struct.sockaddr*
  %77 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %78 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = bitcast i32* %79 to %struct.sockaddr*
  %81 = call i64 @key_sockaddrcmp(%struct.sockaddr* %76, %struct.sockaddr* %80, i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %121

84:                                               ; preds = %72
  %85 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %86 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = bitcast i32* %87 to %struct.sockaddr*
  %89 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %90 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = bitcast i32* %91 to %struct.sockaddr*
  %93 = call i64 @key_sockaddrcmp(%struct.sockaddr* %88, %struct.sockaddr* %92, i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %121

96:                                               ; preds = %84
  %97 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %98 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = bitcast i32* %99 to %struct.sockaddr*
  %101 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %102 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = bitcast i32* %103 to %struct.sockaddr*
  %105 = call i64 @key_sockaddrcmp(%struct.sockaddr* %100, %struct.sockaddr* %104, i32 1)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %121

108:                                              ; preds = %96
  %109 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %110 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = bitcast i32* %111 to %struct.sockaddr*
  %113 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %114 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = bitcast i32* %115 to %struct.sockaddr*
  %117 = call i64 @key_sockaddrcmp(%struct.sockaddr* %112, %struct.sockaddr* %116, i32 1)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %121

120:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %119, %107, %95, %83, %71, %61, %51, %18, %11
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @key_sockaddrcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
