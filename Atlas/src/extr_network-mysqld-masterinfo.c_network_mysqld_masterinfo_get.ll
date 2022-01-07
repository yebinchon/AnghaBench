; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_masterinfo_get(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = call i32 @g_return_val_if_fail(%struct.TYPE_8__* %6, i32 -1)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i32 @g_return_val_if_fail(%struct.TYPE_8__* %8, i32 -1)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %23, %18
  %31 = phi i1 [ true, %18 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ true, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %41
  %54 = phi i1 [ true, %41 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i1 [ true, %53 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi i1 [ true, %65 ], [ %76, %70 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi i1 [ true, %77 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %93, %88
  %100 = phi i1 [ true, %88 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %99
  %111 = phi i1 [ true, %99 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %115, %110
  %123 = phi i1 [ true, %110 ], [ %121, %115 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %127, %122
  %135 = phi i1 [ true, %122 ], [ %133, %127 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %139, %134
  %147 = phi i1 [ true, %134 ], [ %145, %139 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %151, %146
  %159 = phi i1 [ true, %146 ], [ %157, %151 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__* %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %163, %158
  %171 = phi i1 [ true, %158 ], [ %169, %163 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %5, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sge i32 %175, 15
  br i1 %176, label %177, label %189

177:                                              ; preds = %170
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  %184 = call i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__* %181, i32* %183)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %180, %177
  %187 = phi i1 [ true, %177 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %186, %170
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 -1, i32 0
  ret i32 %193
}

declare dso_local i32 @g_return_val_if_fail(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @network_mysqld_masterinfo_get_int32(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @network_mysqld_masterinfo_get_string(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
