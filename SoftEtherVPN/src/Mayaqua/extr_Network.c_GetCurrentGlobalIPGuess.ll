; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentGlobalIPGuess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentGlobalIPGuess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }

@IPV6_ADDR_GLOBAL_UNICAST = common dso_local global i64 0, align 8
@IPV6_ADDR_ZERO = common dso_local global i64 0, align 8
@IPV6_ADDR_LOOPBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetCurrentGlobalIPGuess(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %150

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 @Zero(%struct.TYPE_13__* %15, i32 8)
  %17 = call i32* (...) @GetHostIPAddressList()
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %107

20:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @LIST_NUM(i32* %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_13__* @LIST_DATA(i32* %27, i64 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = call i64 @IsIP4(%struct.TYPE_13__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = call i32 @IsZeroIp(%struct.TYPE_13__* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = call i32 @IsIPPrivate(%struct.TYPE_13__* %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 127
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = call i32 @Copy(%struct.TYPE_13__* %49, %struct.TYPE_13__* %50, i32 8)
  br label %52

52:                                               ; preds = %48, %41, %37, %33
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @IsZeroIp(%struct.TYPE_13__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %95, %61
  %63 = load i64, i64* %6, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @LIST_NUM(i32* %64)
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call %struct.TYPE_13__* @LIST_DATA(i32* %68, i64 %69)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %8, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = call i64 @IsIP4(%struct.TYPE_13__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = call i32 @IsZeroIp(%struct.TYPE_13__* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = call i32 @IsIPPrivate(%struct.TYPE_13__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 127
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = call i32 @Copy(%struct.TYPE_13__* %90, %struct.TYPE_13__* %91, i32 8)
  br label %93

93:                                               ; preds = %89, %82, %78, %74
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %62

98:                                               ; preds = %62
  br label %99

99:                                               ; preds = %98, %57
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = call i32 @IsZeroIp(%struct.TYPE_13__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = call i32 @SetIP(%struct.TYPE_13__* %104, i32 127, i32 0, i32 0, i32 1)
  br label %106

106:                                              ; preds = %103, %99
  br label %147

107:                                              ; preds = %14
  store i64 0, i64* %6, align 8
  br label %108

108:                                              ; preds = %143, %107
  %109 = load i64, i64* %6, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = call i64 @LIST_NUM(i32* %110)
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %108
  %114 = load i32*, i32** %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call %struct.TYPE_13__* @LIST_DATA(i32* %114, i64 %115)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %9, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = call i64 @IsIP6(%struct.TYPE_13__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = call i64 @GetIPAddrType6(%struct.TYPE_13__* %121)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @IPV6_ADDR_GLOBAL_UNICAST, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @IPV6_ADDR_ZERO, align 8
  %130 = and i64 %128, %129
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* @IPV6_ADDR_LOOPBACK, align 8
  %135 = and i64 %133, %134
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = call i32 @Copy(%struct.TYPE_13__* %138, %struct.TYPE_13__* %139, i32 8)
  br label %141

141:                                              ; preds = %137, %132, %127, %120
  br label %142

142:                                              ; preds = %141, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %6, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %6, align 8
  br label %108

146:                                              ; preds = %108
  br label %147

147:                                              ; preds = %146, %106
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @FreeHostIPAddressList(i32* %148)
  br label %150

150:                                              ; preds = %147, %13
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @GetHostIPAddressList(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @IsIP4(%struct.TYPE_13__*) #1

declare dso_local i32 @IsZeroIp(%struct.TYPE_13__*) #1

declare dso_local i32 @IsIPPrivate(%struct.TYPE_13__*) #1

declare dso_local i32 @Copy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @SetIP(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i64 @IsIP6(%struct.TYPE_13__*) #1

declare dso_local i64 @GetIPAddrType6(%struct.TYPE_13__*) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
