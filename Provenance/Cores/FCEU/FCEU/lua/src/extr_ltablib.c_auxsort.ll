; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ltablib.c_auxsort.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ltablib.c_auxsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @auxsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsort(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %180, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %184

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @lua_rawgeti(i32* %14, i32 1, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @lua_rawgeti(i32* %17, i32 1, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @sort_comp(i32* %20, i32 -1, i32 -2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @set2(i32* %24, i32 %25, i32 %26)
  br label %31

28:                                               ; preds = %13
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 2)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %184

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @lua_rawgeti(i32* %42, i32 1, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @lua_rawgeti(i32* %45, i32 1, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @sort_comp(i32* %48, i32 -2, i32 -1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @set2(i32* %52, i32 %53, i32 %54)
  br label %74

56:                                               ; preds = %37
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @lua_rawgeti(i32* %59, i32 1, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @sort_comp(i32* %62, i32 -1, i32 -2)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @set2(i32* %66, i32 %67, i32 %68)
  br label %73

70:                                               ; preds = %56
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @lua_pop(i32* %71, i32 2)
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %184

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @lua_rawgeti(i32* %81, i32 1, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @lua_pushvalue(i32* %84, i32 -1)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i64 @lua_rawgeti(i32* %86, i32 1, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @set2(i32* %90, i32 %91, i32 %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %143, %80
  br label %99

99:                                               ; preds = %114, %98
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = call i64 @lua_rawgeti(i32* %100, i32 1, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @sort_comp(i32* %104, i32 -1, i32 -2)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @luaL_error(i32* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @lua_pop(i32* %115, i32 1)
  br label %99

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %133, %117
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  %122 = call i64 @lua_rawgeti(i32* %119, i32 1, i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i64 @sort_comp(i32* %123, i32 -3, i32 -1)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @luaL_error(i32* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @lua_pop(i32* %134, i32 1)
  br label %118

136:                                              ; preds = %118
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @lua_pop(i32* %141, i32 3)
  br label %148

143:                                              ; preds = %136
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @set2(i32* %144, i32 %145, i32 %146)
  br label %98

148:                                              ; preds = %140
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call i64 @lua_rawgeti(i32* %149, i32 1, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @lua_rawgeti(i32* %153, i32 1, i32 %154)
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @set2(i32* %156, i32 %158, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sub nsw i32 %164, %165
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %148
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %5, align 4
  br label %180

174:                                              ; preds = %148
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %178, 2
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  call void @auxsort(i32* %181, i32 %182, i32 %183)
  br label %9

184:                                              ; preds = %79, %36, %9
  ret void
}

declare dso_local i64 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @sort_comp(i32*, i32, i32) #1

declare dso_local i32 @set2(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
