; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsav.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, %struct.secasvar*, %struct.secasvar*, %struct.secasvar*, %struct.secasvar*, i32*, %struct.secasvar*, i32, %struct.secasvar*, %struct.secasvar*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"key_delsav: NULL pointer is passed.\0A\00", align 1
@chain = common dso_local global i32 0, align 4
@ipsec_sav_count = common dso_local global i32 0, align 4
@spihash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_delsav(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %3 = load i32, i32* @sadb_mutex, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %7 = icmp eq %struct.secasvar* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %12 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %166

16:                                               ; preds = %10
  %17 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %18 = call i64 @__LIST_CHAINED(%struct.secasvar* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %22 = load i32, i32* @chain, align 4
  %23 = call i32 @LIST_REMOVE(%struct.secasvar* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @ipsec_sav_count, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @ipsec_sav_count, align 4
  %27 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %28 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %34 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %24
  %39 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %40 = load i32, i32* @spihash, align 4
  %41 = call i32 @LIST_REMOVE(%struct.secasvar* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %44 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %43, i32 0, i32 9
  %45 = load %struct.secasvar*, %struct.secasvar** %44, align 8
  %46 = icmp ne %struct.secasvar* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %49 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %48, i32 0, i32 9
  %50 = load %struct.secasvar*, %struct.secasvar** %49, align 8
  %51 = call %struct.secasvar* @_KEYBUF(%struct.secasvar* %50)
  %52 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %53 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %52, i32 0, i32 9
  %54 = load %struct.secasvar*, %struct.secasvar** %53, align 8
  %55 = call i32 @_KEYLEN(%struct.secasvar* %54)
  %56 = call i32 @bzero(%struct.secasvar* %51, i32 %55)
  %57 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %58 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %57, i32 0, i32 9
  %59 = load %struct.secasvar*, %struct.secasvar** %58, align 8
  %60 = call i32 @KFREE(%struct.secasvar* %59)
  %61 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %62 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %61, i32 0, i32 9
  store %struct.secasvar* null, %struct.secasvar** %62, align 8
  br label %63

63:                                               ; preds = %47, %42
  %64 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %65 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %64, i32 0, i32 8
  %66 = load %struct.secasvar*, %struct.secasvar** %65, align 8
  %67 = icmp ne %struct.secasvar* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %70 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %69, i32 0, i32 8
  %71 = load %struct.secasvar*, %struct.secasvar** %70, align 8
  %72 = call %struct.secasvar* @_KEYBUF(%struct.secasvar* %71)
  %73 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %74 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %73, i32 0, i32 8
  %75 = load %struct.secasvar*, %struct.secasvar** %74, align 8
  %76 = call i32 @_KEYLEN(%struct.secasvar* %75)
  %77 = call i32 @bzero(%struct.secasvar* %72, i32 %76)
  %78 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %79 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %78, i32 0, i32 8
  %80 = load %struct.secasvar*, %struct.secasvar** %79, align 8
  %81 = call i32 @KFREE(%struct.secasvar* %80)
  %82 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %83 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %82, i32 0, i32 8
  store %struct.secasvar* null, %struct.secasvar** %83, align 8
  br label %84

84:                                               ; preds = %68, %63
  %85 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %86 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %85, i32 0, i32 6
  %87 = load %struct.secasvar*, %struct.secasvar** %86, align 8
  %88 = icmp ne %struct.secasvar* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %91 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %90, i32 0, i32 6
  %92 = load %struct.secasvar*, %struct.secasvar** %91, align 8
  %93 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %94 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bzero(%struct.secasvar* %92, i32 %95)
  %97 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %98 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %97, i32 0, i32 6
  %99 = load %struct.secasvar*, %struct.secasvar** %98, align 8
  %100 = call i32 @KFREE(%struct.secasvar* %99)
  %101 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %102 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %101, i32 0, i32 6
  store %struct.secasvar* null, %struct.secasvar** %102, align 8
  br label %103

103:                                              ; preds = %89, %84
  %104 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %105 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %110 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @keydb_delsecreplay(i32* %111)
  %113 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %114 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %113, i32 0, i32 5
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %117 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %116, i32 0, i32 4
  %118 = load %struct.secasvar*, %struct.secasvar** %117, align 8
  %119 = icmp ne %struct.secasvar* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %122 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %121, i32 0, i32 4
  %123 = load %struct.secasvar*, %struct.secasvar** %122, align 8
  %124 = call i32 @KFREE(%struct.secasvar* %123)
  %125 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %126 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %125, i32 0, i32 4
  store %struct.secasvar* null, %struct.secasvar** %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %129 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %128, i32 0, i32 3
  %130 = load %struct.secasvar*, %struct.secasvar** %129, align 8
  %131 = icmp ne %struct.secasvar* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %134 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %133, i32 0, i32 3
  %135 = load %struct.secasvar*, %struct.secasvar** %134, align 8
  %136 = call i32 @KFREE(%struct.secasvar* %135)
  %137 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %138 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %137, i32 0, i32 3
  store %struct.secasvar* null, %struct.secasvar** %138, align 8
  br label %139

139:                                              ; preds = %132, %127
  %140 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %141 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %140, i32 0, i32 2
  %142 = load %struct.secasvar*, %struct.secasvar** %141, align 8
  %143 = icmp ne %struct.secasvar* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %146 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %145, i32 0, i32 2
  %147 = load %struct.secasvar*, %struct.secasvar** %146, align 8
  %148 = call i32 @KFREE(%struct.secasvar* %147)
  %149 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %150 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %149, i32 0, i32 2
  store %struct.secasvar* null, %struct.secasvar** %150, align 8
  br label %151

151:                                              ; preds = %144, %139
  %152 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %153 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %152, i32 0, i32 1
  %154 = load %struct.secasvar*, %struct.secasvar** %153, align 8
  %155 = icmp ne %struct.secasvar* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %158 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %157, i32 0, i32 1
  %159 = load %struct.secasvar*, %struct.secasvar** %158, align 8
  %160 = call i32 @KFREE(%struct.secasvar* %159)
  %161 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %162 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %161, i32 0, i32 1
  store %struct.secasvar* null, %struct.secasvar** %162, align 8
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %165 = call i32 @KFREE(%struct.secasvar* %164)
  br label %166

166:                                              ; preds = %163, %15
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @__LIST_CHAINED(%struct.secasvar*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secasvar*, i32) #1

declare dso_local i32 @bzero(%struct.secasvar*, i32) #1

declare dso_local %struct.secasvar* @_KEYBUF(%struct.secasvar*) #1

declare dso_local i32 @_KEYLEN(%struct.secasvar*) #1

declare dso_local i32 @KFREE(%struct.secasvar*) #1

declare dso_local i32 @keydb_delsecreplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
