; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_access_D5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_access_D5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CARTRIDGE_main = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@active_cart = common dso_local global %struct.TYPE_6__* null, align 8
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @access_D5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_D5(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %199 [
    i32 139, label %16
    i32 138, label %32
    i32 143, label %48
    i32 128, label %51
    i32 129, label %54
    i32 141, label %57
    i32 142, label %67
    i32 133, label %77
    i32 147, label %77
    i32 134, label %117
    i32 148, label %117
    i32 136, label %157
    i32 144, label %165
    i32 135, label %165
    i32 146, label %165
    i32 149, label %166
    i32 132, label %173
    i32 131, label %176
    i32 150, label %179
    i32 140, label %179
    i32 137, label %181
    i32 130, label %188
    i32 145, label %192
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %9, align 4
  br label %31

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 7
  switch i32 %23, label %29 [
    i32 0, label %24
    i32 1, label %25
    i32 3, label %26
    i32 7, label %26
    i32 4, label %27
    i32 5, label %28
  ]

24:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %30

25:                                               ; preds = %21
  store i32 255, i32* %9, align 4
  br label %30

26:                                               ; preds = %21, %21
  store i32 1, i32* %9, align 4
  br label %30

27:                                               ; preds = %21
  store i32 2, i32* %9, align 4
  br label %30

28:                                               ; preds = %21
  store i32 255, i32* %9, align 4
  br label %30

29:                                               ; preds = %21
  store i32 255, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24
  br label %31

31:                                               ; preds = %30, %20
  br label %201

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %9, align 4
  br label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 7
  switch i32 %39, label %45 [
    i32 0, label %40
    i32 1, label %41
    i32 3, label %42
    i32 7, label %42
    i32 4, label %43
    i32 5, label %44
  ]

40:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %46

41:                                               ; preds = %37
  store i32 255, i32* %9, align 4
  br label %46

42:                                               ; preds = %37, %37
  store i32 2, i32* %9, align 4
  br label %46

43:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %46

44:                                               ; preds = %37
  store i32 255, i32* %9, align 4
  br label %46

45:                                               ; preds = %37
  store i32 255, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %44, %43, %42, %41, %40
  br label %47

47:                                               ; preds = %46, %36
  br label %201

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 3
  store i32 %50, i32* %9, align 4
  br label %201

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %9, align 4
  br label %201

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 11
  store i32 %56, i32* %9, align 4
  br label %201

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 240
  %60 = icmp ne i32 %59, 112
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %205

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, 7
  %66 = and i32 %65, 15
  store i32 %66, i32* %9, align 4
  br label %201

67:                                               ; preds = %3
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 240
  %70 = icmp ne i32 %69, 208
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %205

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = xor i32 %74, 7
  %76 = and i32 %75, 15
  store i32 %76, i32* %9, align 4
  br label %201

77:                                               ; preds = %3, %3
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 240
  %80 = icmp ne i32 %79, 224
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %205

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 12
  store i32 %89, i32* %9, align 4
  br label %94

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = xor i32 %91, 7
  %93 = and i32 %92, 15
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = icmp eq %struct.TYPE_6__* %95, @CARTRIDGE_main
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 12
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 12
  %104 = icmp ne i32 %103, 8
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store %struct.TYPE_6__* @CARTRIDGE_main, %struct.TYPE_6__** @active_cart, align 8
  %106 = call i32 (...) @MapActiveCart()
  br label %107

107:                                              ; preds = %105, %101
  br label %115

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 12
  %111 = icmp eq i32 %110, 8
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  store %struct.TYPE_6__* @CARTRIDGE_piggyback, %struct.TYPE_6__** @active_cart, align 8
  %113 = call i32 (...) @MapActiveCart()
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %107
  br label %116

116:                                              ; preds = %115, %94
  br label %201

117:                                              ; preds = %3, %3
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 224
  %120 = icmp ne i32 %119, 224
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %4, align 4
  br label %205

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, 12
  store i32 %129, i32* %9, align 4
  br label %134

130:                                              ; preds = %123
  %131 = load i32, i32* %6, align 4
  %132 = xor i32 %131, 23
  %133 = and i32 %132, 31
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %127
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = icmp eq %struct.TYPE_6__* %135, @CARTRIDGE_main
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 12
  %140 = icmp eq i32 %139, 8
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, 12
  %144 = icmp ne i32 %143, 8
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  store %struct.TYPE_6__* @CARTRIDGE_main, %struct.TYPE_6__** @active_cart, align 8
  %146 = call i32 (...) @MapActiveCart()
  br label %147

147:                                              ; preds = %145, %141
  br label %155

148:                                              ; preds = %137
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, 12
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  store %struct.TYPE_6__* @CARTRIDGE_piggyback, %struct.TYPE_6__** @active_cart, align 8
  %153 = call i32 (...) @MapActiveCart()
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %147
  br label %156

156:                                              ; preds = %155, %134
  br label %201

157:                                              ; preds = %3
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, 9
  switch i32 %159, label %163 [
    i32 0, label %160
    i32 1, label %161
    i32 8, label %162
  ]

160:                                              ; preds = %157
  store i32 1, i32* %9, align 4
  br label %164

161:                                              ; preds = %157
  store i32 3, i32* %9, align 4
  br label %164

162:                                              ; preds = %157
  store i32 -1, i32* %9, align 4
  br label %164

163:                                              ; preds = %157
  store i32 2, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %162, %161, %160
  br label %201

165:                                              ; preds = %3, %3, %3
  store i32 1, i32* %9, align 4
  br label %201

166:                                              ; preds = %3
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, 224
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %4, align 4
  br label %205

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %3, %172
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, 31
  store i32 %175, i32* %9, align 4
  br label %201

176:                                              ; preds = %3
  %177 = load i32, i32* %6, align 4
  %178 = and i32 %177, 23
  store i32 %178, i32* %9, align 4
  br label %201

179:                                              ; preds = %3, %3
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %9, align 4
  br label %201

181:                                              ; preds = %3
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 9
  switch i32 %183, label %186 [
    i32 0, label %184
    i32 1, label %184
    i32 8, label %185
  ]

184:                                              ; preds = %181, %181
  store i32 1, i32* %9, align 4
  br label %187

185:                                              ; preds = %181
  store i32 -1, i32* %9, align 4
  br label %187

186:                                              ; preds = %181
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %186, %185, %184
  br label %201

188:                                              ; preds = %3
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  %191 = srem i32 %190, 5
  store i32 %191, i32* %9, align 4
  br label %201

192:                                              ; preds = %3
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %195, %192
  br label %201

199:                                              ; preds = %3
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %4, align 4
  br label %205

201:                                              ; preds = %198, %188, %187, %179, %176, %173, %165, %164, %156, %116, %73, %63, %54, %51, %48, %47, %31
  %202 = load i32, i32* %9, align 4
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* @TRUE, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %201, %199, %170, %121, %81, %71, %61
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @MapActiveCart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
