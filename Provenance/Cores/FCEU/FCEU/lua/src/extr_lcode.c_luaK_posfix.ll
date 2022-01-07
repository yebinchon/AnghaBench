; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lcode.c_luaK_posfix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lcode.c_luaK_posfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@NO_JUMP = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i32 0, align 4
@OP_CONCAT = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@OP_SUB = common dso_local global i32 0, align 4
@OP_MUL = common dso_local global i32 0, align 4
@OP_DIV = common dso_local global i32 0, align 4
@OP_MOD = common dso_local global i32 0, align 4
@OP_POW = common dso_local global i32 0, align 4
@OP_EQ = common dso_local global i32 0, align 4
@OP_LT = common dso_local global i32 0, align 4
@OP_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_posfix(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %190 [
    i32 141, label %10
    i32 130, label %32
    i32 140, label %54
    i32 142, label %118
    i32 128, label %124
    i32 132, label %130
    i32 139, label %136
    i32 133, label %142
    i32 129, label %148
    i32 138, label %154
    i32 131, label %160
    i32 134, label %166
    i32 135, label %172
    i32 136, label %178
    i32 137, label %184
  ]

10:                                               ; preds = %4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NO_JUMP, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @lua_assert(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = call i32 @luaK_dischargevars(i32* %18, %struct.TYPE_17__* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @luaK_concat(i32* %21, i32* %23, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = bitcast %struct.TYPE_17__* %28 to i8*
  %31 = bitcast %struct.TYPE_17__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 16, i1 false)
  br label %192

32:                                               ; preds = %4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NO_JUMP, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @lua_assert(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = call i32 @luaK_dischargevars(i32* %40, %struct.TYPE_17__* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @luaK_concat(i32* %43, i32* %45, i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = bitcast %struct.TYPE_17__* %50 to i8*
  %53 = bitcast %struct.TYPE_17__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 16, i1 false)
  br label %192

54:                                               ; preds = %4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = call i32 @luaK_exp2val(i32* %55, %struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VRELOCABLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = call i32 @getcode(i32* %64, %struct.TYPE_17__* %65)
  %67 = call i32 @GET_OPCODE(i32 %66)
  %68 = load i32, i32* @OP_CONCAT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = call i32 @getcode(i32* %76, %struct.TYPE_17__* %77)
  %79 = call i32 @GETARG_B(i32 %78)
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %75, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @lua_assert(i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = call i32 @freeexp(i32* %84, %struct.TYPE_17__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = call i32 @getcode(i32* %87, %struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SETARG_B(i32 %89, i32 %94)
  %96 = load i32, i32* @VRELOCABLE, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  br label %117

108:                                              ; preds = %63, %54
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = call i32 @luaK_exp2nextreg(i32* %109, %struct.TYPE_17__* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @OP_CONCAT, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = call i32 @codearith(i32* %112, i32 %113, %struct.TYPE_17__* %114, %struct.TYPE_17__* %115)
  br label %117

117:                                              ; preds = %108, %70
  br label %192

118:                                              ; preds = %4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* @OP_ADD, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = call i32 @codearith(i32* %119, i32 %120, %struct.TYPE_17__* %121, %struct.TYPE_17__* %122)
  br label %192

124:                                              ; preds = %4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @OP_SUB, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = call i32 @codearith(i32* %125, i32 %126, %struct.TYPE_17__* %127, %struct.TYPE_17__* %128)
  br label %192

130:                                              ; preds = %4
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* @OP_MUL, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %135 = call i32 @codearith(i32* %131, i32 %132, %struct.TYPE_17__* %133, %struct.TYPE_17__* %134)
  br label %192

136:                                              ; preds = %4
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* @OP_DIV, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = call i32 @codearith(i32* %137, i32 %138, %struct.TYPE_17__* %139, %struct.TYPE_17__* %140)
  br label %192

142:                                              ; preds = %4
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @OP_MOD, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = call i32 @codearith(i32* %143, i32 %144, %struct.TYPE_17__* %145, %struct.TYPE_17__* %146)
  br label %192

148:                                              ; preds = %4
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* @OP_POW, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %153 = call i32 @codearith(i32* %149, i32 %150, %struct.TYPE_17__* %151, %struct.TYPE_17__* %152)
  br label %192

154:                                              ; preds = %4
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* @OP_EQ, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = call i32 @codecomp(i32* %155, i32 %156, i32 1, %struct.TYPE_17__* %157, %struct.TYPE_17__* %158)
  br label %192

160:                                              ; preds = %4
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @OP_EQ, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %165 = call i32 @codecomp(i32* %161, i32 %162, i32 0, %struct.TYPE_17__* %163, %struct.TYPE_17__* %164)
  br label %192

166:                                              ; preds = %4
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* @OP_LT, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %171 = call i32 @codecomp(i32* %167, i32 %168, i32 1, %struct.TYPE_17__* %169, %struct.TYPE_17__* %170)
  br label %192

172:                                              ; preds = %4
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @OP_LE, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %177 = call i32 @codecomp(i32* %173, i32 %174, i32 1, %struct.TYPE_17__* %175, %struct.TYPE_17__* %176)
  br label %192

178:                                              ; preds = %4
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* @OP_LT, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = call i32 @codecomp(i32* %179, i32 %180, i32 0, %struct.TYPE_17__* %181, %struct.TYPE_17__* %182)
  br label %192

184:                                              ; preds = %4
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* @OP_LE, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %189 = call i32 @codecomp(i32* %185, i32 %186, i32 0, %struct.TYPE_17__* %187, %struct.TYPE_17__* %188)
  br label %192

190:                                              ; preds = %4
  %191 = call i32 @lua_assert(i32 0)
  br label %192

192:                                              ; preds = %190, %184, %178, %172, %166, %160, %154, %148, %142, %136, %130, %124, %118, %117, %32, %10
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaK_dischargevars(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @luaK_exp2val(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @getcode(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @freeexp(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @codearith(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @codecomp(i32*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
