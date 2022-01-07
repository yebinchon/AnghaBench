; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_addr_in_subnet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_is_addr_in_subnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32)* @necp_is_addr_in_subnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_is_addr_in_subnet(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %9 = icmp eq %struct.sockaddr* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = icmp eq %struct.sockaddr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %117

15:                                               ; preds = %10
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %15
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %117

33:                                               ; preds = %23
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %115 [
    i32 129, label %37
    i32 128, label %64
  ]

37:                                               ; preds = %33
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %45 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %117

55:                                               ; preds = %43, %37
  %56 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %57 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %60 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @necp_buffer_compare_with_bit_prefix(i32* %58, i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %117

64:                                               ; preds = %33
  %65 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %66 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %72 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %76 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %4, align 4
  br label %117

82:                                               ; preds = %70, %64
  %83 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %84 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %90 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %96 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %100 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %98, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %4, align 4
  br label %117

106:                                              ; preds = %94, %88, %82
  %107 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %108 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %107)
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %111 = call %struct.TYPE_3__* @satosin6(%struct.sockaddr* %110)
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @necp_buffer_compare_with_bit_prefix(i32* %109, i32* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %33
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %106, %104, %80, %55, %53, %31, %13
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_4__* @satosin(%struct.sockaddr*) #1

declare dso_local i32 @necp_buffer_compare_with_bit_prefix(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @satosin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
