; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_addr_compare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_addr_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sockaddr }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.sockaddr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32)* @necp_addr_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_addr_compare(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %3
  store i32 2, i32* %4, align 4
  br label %194

26:                                               ; preds = %17
  %27 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %194

32:                                               ; preds = %26
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %175 [
    i32 129, label %36
    i32 128, label %98
  ]

36:                                               ; preds = %32
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 2, i32* %4, align 4
  br label %194

42:                                               ; preds = %36
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %48 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @memcmp(%struct.sockaddr* %46, %struct.sockaddr* %50, i32 16)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %42
  %55 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %56 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %60 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  br label %77

65:                                               ; preds = %54
  %66 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %67 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %71 = call %struct.TYPE_8__* @satosin(%struct.sockaddr* %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %65
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  br label %96

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %85
  store i32 2, i32* %4, align 4
  br label %194

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %42
  br label %183

98:                                               ; preds = %32
  %99 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 2, i32* %4, align 4
  br label %194

104:                                              ; preds = %98
  %105 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %106 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %110 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 2, i32* %4, align 4
  br label %194

115:                                              ; preds = %104
  %116 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %117 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %116)
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.sockaddr*, %struct.sockaddr** %119, align 8
  %121 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %120, i64 0
  %122 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %123 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %122)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.sockaddr*, %struct.sockaddr** %125, align 8
  %127 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %126, i64 0
  %128 = call i32 @memcmp(%struct.sockaddr* %121, %struct.sockaddr* %127, i32 4)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %174

131:                                              ; preds = %115
  %132 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %133 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %137 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %136)
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  store i32 -1, i32* %9, align 4
  br label %154

142:                                              ; preds = %131
  %143 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %144 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %148 = call %struct.TYPE_7__* @satosin6(%struct.sockaddr* %147)
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %146, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i32 1, i32* %9, align 4
  br label %153

153:                                              ; preds = %152, %142
  br label %154

154:                                              ; preds = %153, %141
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %8, align 4
  br label %173

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* %9, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %162
  store i32 2, i32* %4, align 4
  br label %194

172:                                              ; preds = %168, %165
  br label %173

173:                                              ; preds = %172, %157
  br label %174

174:                                              ; preds = %173, %115
  br label %183

175:                                              ; preds = %32
  %176 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %177 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %178 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %179 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcmp(%struct.sockaddr* %176, %struct.sockaddr* %177, i32 %181)
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %175, %174, %97
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 -1, i32* %8, align 4
  br label %192

187:                                              ; preds = %183
  %188 = load i32, i32* %8, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 1, i32* %8, align 4
  br label %191

191:                                              ; preds = %190, %187
  br label %192

192:                                              ; preds = %191, %186
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %171, %114, %103, %94, %41, %31, %25
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @memcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_8__* @satosin(%struct.sockaddr*) #1

declare dso_local %struct.TYPE_7__* @satosin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
