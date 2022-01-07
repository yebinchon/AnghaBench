; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_sa_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_sa_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr* @sa_copy(%struct.sockaddr* %0, %struct.sockaddr_storage* %1, i32* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @IFSCOPE_NONE, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AF_INET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ true, %20 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %34 = call i32 @bzero(%struct.sockaddr_storage* %33, i32 4)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AF_INET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %40 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %41 = call i32 @bcopy(%struct.sockaddr* %39, %struct.sockaddr_storage* %40, i32 4)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IFSCOPE_NONE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %38
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %50 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @sin_set_ifscope(%struct.sockaddr* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  br label %120

54:                                               ; preds = %29
  %55 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %56 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %57 = call i32 @bcopy(%struct.sockaddr* %55, %struct.sockaddr_storage* %56, i32 4)
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %54
  %61 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %62 = call %struct.TYPE_2__* @SIN6(%struct.sockaddr_storage* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i64 @IN6_IS_SCOPE_EMBED(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %68 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %67)
  %69 = call i32 @sin6_get_embedded_ifscope(%struct.sockaddr* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @IFSCOPE_NONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @IFSCOPE_NONE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %73, %66
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @IFSCOPE_NONE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %85 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @sin6_set_ifscope(%struct.sockaddr* %85, i32 %86)
  br label %92

88:                                               ; preds = %79
  %89 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %90 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %89)
  %91 = call i32 @sin6_get_ifscope(%struct.sockaddr* %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @IFSCOPE_NONE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %102 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @sin6_set_embedded_ifscope(%struct.sockaddr* %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %96, %92
  br label %119

106:                                              ; preds = %60, %54
  %107 = load i32*, i32** %6, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @IFSCOPE_NONE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109, %106
  %114 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %115 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @sin6_set_ifscope(%struct.sockaddr* %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %109
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %53
  %121 = load i32*, i32** %6, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @AF_INET, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %129 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %128)
  %130 = call i32 @sin_get_ifscope(%struct.sockaddr* %129)
  br label %135

131:                                              ; preds = %123
  %132 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %133 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %132)
  %134 = call i32 @sin6_get_ifscope(%struct.sockaddr* %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %130, %127 ], [ %134, %131 ]
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %120
  %139 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %140 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %139)
  ret %struct.sockaddr* %140
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @sin_set_ifscope(%struct.sockaddr*, i32) #1

declare dso_local %struct.sockaddr* @SA(%struct.sockaddr_storage*) #1

declare dso_local i64 @IN6_IS_SCOPE_EMBED(i32*) #1

declare dso_local %struct.TYPE_2__* @SIN6(%struct.sockaddr_storage*) #1

declare dso_local i32 @sin6_get_embedded_ifscope(%struct.sockaddr*) #1

declare dso_local i32 @sin6_set_ifscope(%struct.sockaddr*, i32) #1

declare dso_local i32 @sin6_get_ifscope(%struct.sockaddr*) #1

declare dso_local i32 @sin6_set_embedded_ifscope(%struct.sockaddr*, i32) #1

declare dso_local i32 @sin_get_ifscope(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
